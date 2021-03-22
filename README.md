# AWS clients for Erlang

[![Actions Status](https://github.com/aws-beam/aws-erlang/workflows/Build/badge.svg)](https://github.com/aws-beam/aws-erlang/actions)

Here is an example:

```erlang
Client = aws_client:make_client(<<"access-key-id">>, <<"secret-access-key">>, <<"us-east-1">>),
{ok, Output, _Response} = aws_kinesis:list_streams(Client, #{}, []),
io:format("~p~n", [Output]).
```

This outputs:

```erlang
#{<<"HasMoreStreams">> => false,<<"StreamNames">> => []}
```

* Code is generated using the JSON descriptions of AWS services used to build
  the [AWS SDK for the Go programming language](https://github.com/awslabs/aws-sdk-go/tree/master/apis) library by [aws-codegen](https://github.com/aws-beam/aws-codegen).
* Code is readable with fairly complete documentation.
* Support for AWS services that use the `json` protocols.
* Request data is encoded from maps to JSON and response data is decoded from
  JSON to maps.  The data you work with is almost exactly what's expected by
  remote APIs and what's returned by them.
* The `hackney` response received for each request is returned alongside the
  response data.

## License

Copyright 2015 Jamshed Kakar <jkakar@kakar.ca>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
