%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Resource Groups Tagging API
%%
%% This guide describes the API operations for the resource groups tagging.
%%
%% A tag is a label that you assign to an AWS resource. A tag consists of a
%% key and a value, both of which you define. For example, if you have two
%% Amazon EC2 instances, you might assign both a tag key of "Stack." But the
%% value of "Stack" might be "Testing" for one and "Production" for the
%% other.
%%
%% Do not store personally identifiable information (PII) or other
%% confidential or sensitive information in tags. We use tags to provide you
%% with billing and administration services. Tags are not intended to be used
%% for private or sensitive data.
%%
%% Tagging can help you organize your resources and enables you to simplify
%% resource management, access management and cost allocation.
%%
%% You can use the resource groups tagging API operations to complete the
%% following tasks:
%%
%% <ul> <li> Tag and untag supported resources located in the specified
%% Region for the AWS account.
%%
%% </li> <li> Use tag-based filters to search for resources located in the
%% specified Region for the AWS account.
%%
%% </li> <li> List all existing tag keys in the specified Region for the AWS
%% account.
%%
%% </li> <li> List all existing values for the specified key in the specified
%% Region for the AWS account.
%%
%% </li> </ul> To use resource groups tagging API operations, you must add
%% the following permissions to your IAM policy:
%%
%% <ul> <li> `tag:GetResources`
%%
%% </li> <li> `tag:TagResources`
%%
%% </li> <li> `tag:UntagResources`
%%
%% </li> <li> `tag:GetTagKeys`
%%
%% </li> <li> `tag:GetTagValues`
%%
%% </li> </ul> You'll also need permissions to access the resources of
%% individual services so that you can tag and untag those resources.
%%
%% For more information on IAM policies, see Managing IAM Policies in the IAM
%% User Guide.
%%
%% Services that support the Resource Groups Tagging API
%%
%% You can use the Resource Groups Tagging API to tag resources for the
%% following AWS services.
%%
%% <ul> <li> Alexa for Business (a4b)
%%
%% </li> <li> API Gateway
%%
%% </li> <li> Amazon AppStream
%%
%% </li> <li> AWS AppSync
%%
%% </li> <li> AWS App Mesh
%%
%% </li> <li> Amazon Athena
%%
%% </li> <li> Amazon Aurora
%%
%% </li> <li> AWS Backup
%%
%% </li> <li> AWS Certificate Manager
%%
%% </li> <li> AWS Certificate Manager Private CA
%%
%% </li> <li> Amazon Cloud Directory
%%
%% </li> <li> AWS Cloud Map
%%
%% </li> <li> AWS CloudFormation
%%
%% </li> <li> Amazon CloudFront
%%
%% </li> <li> AWS CloudHSM
%%
%% </li> <li> AWS CloudTrail
%%
%% </li> <li> Amazon CloudWatch (alarms only)
%%
%% </li> <li> Amazon CloudWatch Events
%%
%% </li> <li> Amazon CloudWatch Logs
%%
%% </li> <li> Amazon Cloudwatch Synthetics
%%
%% </li> <li> AWS CodeBuild
%%
%% </li> <li> AWS CodeCommit
%%
%% </li> <li> AWS CodeGuru Profiler
%%
%% </li> <li> AWS CodePipeline
%%
%% </li> <li> AWS CodeStar
%%
%% </li> <li> AWS CodeStar Connections
%%
%% </li> <li> Amazon Cognito Identity
%%
%% </li> <li> Amazon Cognito User Pools
%%
%% </li> <li> Amazon Comprehend
%%
%% </li> <li> AWS Config
%%
%% </li> <li> Amazon Connect
%%
%% </li> <li> AWS Data Exchange
%%
%% </li> <li> AWS Data Pipeline
%%
%% </li> <li> AWS Database Migration Service
%%
%% </li> <li> AWS DataSync
%%
%% </li> <li> AWS Device Farm
%%
%% </li> <li> AWS Direct Connect
%%
%% </li> <li> AWS Directory Service
%%
%% </li> <li> Amazon DynamoDB
%%
%% </li> <li> Amazon EBS
%%
%% </li> <li> Amazon EC2
%%
%% </li> <li> EC2 Image Builder
%%
%% </li> <li> Amazon ECR
%%
%% </li> <li> Amazon ECS
%%
%% </li> <li> Amazon EKS
%%
%% </li> <li> AWS Elastic Beanstalk
%%
%% </li> <li> Amazon Elastic File System
%%
%% </li> <li> Elastic Load Balancing
%%
%% </li> <li> Amazon Elastic Inference
%%
%% </li> <li> Amazon ElastiCache
%%
%% </li> <li> Amazon Elasticsearch Service
%%
%% </li> <li> AWS Elemental MediaLive
%%
%% </li> <li> AWS Elemental MediaPackage
%%
%% </li> <li> AWS Elemental MediaPackage VoD
%%
%% </li> <li> AWS Elemental MediaTailor
%%
%% </li> <li> Amazon EMR
%%
%% </li> <li> Amazon EventBridge Schema
%%
%% </li> <li> AWS Firewall Manager
%%
%% </li> <li> Amazon Forecast
%%
%% </li> <li> Amazon Fraud Detector
%%
%% </li> <li> Amazon FSx
%%
%% </li> <li> Amazon S3 Glacier
%%
%% </li> <li> AWS Global Accelerator
%%
%% </li> <li> AWS Ground Station
%%
%% </li> <li> AWS Glue
%%
%% </li> <li> Amazon GuardDuty
%%
%% </li> <li> Amazon Inspector
%%
%% </li> <li> Amazon Interactive Video Service
%%
%% </li> <li> AWS IoT Analytics
%%
%% </li> <li> AWS IoT Core
%%
%% </li> <li> AWS IoT Device Defender
%%
%% </li> <li> AWS IoT Device Management
%%
%% </li> <li> AWS IoT Events
%%
%% </li> <li> AWS IoT Greengrass
%%
%% </li> <li> AWS IoT 1-Click
%%
%% </li> <li> AWS IoT Sitewise
%%
%% </li> <li> AWS IoT Things Graph
%%
%% </li> <li> Amazon Kendra
%%
%% </li> <li> AWS Key Management Service
%%
%% </li> <li> Amazon Kinesis
%%
%% </li> <li> Amazon Kinesis Data Analytics
%%
%% </li> <li> Amazon Kinesis Data Firehose
%%
%% </li> <li> AWS Lambda
%%
%% </li> <li> Amazon Lex
%%
%% </li> <li> AWS License Manager
%%
%% </li> <li> Amazon Lightsail
%%
%% </li> <li> Amazon Macie
%%
%% </li> <li> Amazon Machine Learning
%%
%% </li> <li> Amazon MQ
%%
%% </li> <li> Amazon MSK
%%
%% </li> <li> Amazon MSK
%%
%% </li> <li> Amazon Neptune
%%
%% </li> <li> AWS Network Manager
%%
%% </li> <li> AWS OpsWorks
%%
%% </li> <li> AWS OpsWorks CM
%%
%% </li> <li> AWS Organizations
%%
%% </li> <li> Amazon Pinpoint
%%
%% </li> <li> Amazon Quantum Ledger Database (QLDB)
%%
%% </li> <li> Amazon RDS
%%
%% </li> <li> Amazon Redshift
%%
%% </li> <li> AWS Resource Access Manager
%%
%% </li> <li> AWS Resource Groups
%%
%% </li> <li> AWS RoboMaker
%%
%% </li> <li> Amazon Route 53
%%
%% </li> <li> Amazon Route 53 Resolver
%%
%% </li> <li> Amazon S3 (buckets only)
%%
%% </li> <li> Amazon SageMaker
%%
%% </li> <li> Savings Plans
%%
%% </li> <li> AWS Secrets Manager
%%
%% </li> <li> AWS Security Hub
%%
%% </li> <li> AWS Service Catalog
%%
%% </li> <li> Amazon Simple Email Service (SES)
%%
%% </li> <li> Amazon Simple Notification Service (SNS)
%%
%% </li> <li> Amazon Simple Queue Service (SQS)
%%
%% </li> <li> Amazon Simple Workflow Service
%%
%% </li> <li> AWS Step Functions
%%
%% </li> <li> AWS Storage Gateway
%%
%% </li> <li> AWS Systems Manager
%%
%% </li> <li> AWS Transfer for SFTP
%%
%% </li> <li> Amazon VPC
%%
%% </li> <li> AWS WAF
%%
%% </li> <li> AWS WAF Regional
%%
%% </li> <li> Amazon WorkLink
%%
%% </li> <li> Amazon WorkSpaces
%%
%% </li> </ul>
-module(aws_resource_groups_tagging_api).

-export([describe_report_creation/2,
         describe_report_creation/3,
         get_compliance_summary/2,
         get_compliance_summary/3,
         get_resources/2,
         get_resources/3,
         get_tag_keys/2,
         get_tag_keys/3,
         get_tag_values/2,
         get_tag_values/3,
         start_report_creation/2,
         start_report_creation/3,
         tag_resources/2,
         tag_resources/3,
         untag_resources/2,
         untag_resources/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Describes the status of the `StartReportCreation` operation.
%%
%% You can call this operation only from the organization's master account
%% and from the us-east-1 Region.
describe_report_creation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_report_creation(Client, Input, []).
describe_report_creation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReportCreation">>, Input, Options).

%% @doc Returns a table that shows counts of resources that are noncompliant
%% with their tag policies.
%%
%% For more information on tag policies, see Tag Policies in the AWS
%% Organizations User Guide.
%%
%% You can call this operation only from the organization's master account
%% and from the us-east-1 Region.
get_compliance_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_summary(Client, Input, []).
get_compliance_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceSummary">>, Input, Options).

%% @doc Returns all the tagged or previously tagged resources that are
%% located in the specified Region for the AWS account.
%%
%% Depending on what information you want returned, you can also specify the
%% following:
%%
%% <ul> <li> Filters that specify what tags and resource types you want
%% returned. The response includes all tags that are associated with the
%% requested resources.
%%
%% </li> <li> Information about compliance with the account's effective tag
%% policy. For more information on tag policies, see Tag Policies in the AWS
%% Organizations User Guide.
%%
%% </li> </ul> You can check the `PaginationToken` response parameter to
%% determine if a query is complete. Queries occasionally return fewer
%% results on a page than allowed. The `PaginationToken` response parameter
%% value is `null` only when there are no more results to display.
get_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resources(Client, Input, []).
get_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResources">>, Input, Options).

%% @doc Returns all tag keys in the specified Region for the AWS account.
get_tag_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tag_keys(Client, Input, []).
get_tag_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTagKeys">>, Input, Options).

%% @doc Returns all tag values for the specified key in the specified Region
%% for the AWS account.
get_tag_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tag_values(Client, Input, []).
get_tag_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTagValues">>, Input, Options).

%% @doc Generates a report that lists all tagged resources in accounts across
%% your organization and tells whether each resource is compliant with the
%% effective tag policy.
%%
%% Compliance data is refreshed daily.
%%
%% The generated report is saved to the following location:
%%
%% `s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv`
%%
%% You can call this operation only from the organization's master account
%% and from the us-east-1 Region.
start_report_creation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_report_creation(Client, Input, []).
start_report_creation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReportCreation">>, Input, Options).

%% @doc Applies one or more tags to the specified resources.
%%
%% Note the following:
%%
%% <ul> <li> Not all resources can have tags. For a list of services that
%% support tagging, see this list.
%%
%% </li> <li> Each resource can have up to 50 tags. For other limits, see Tag
%% Naming and Usage Conventions in the AWS General Reference.
%%
%% </li> <li> You can only tag resources that are located in the specified
%% Region for the AWS account.
%%
%% </li> <li> To add tags to a resource, you need the necessary permissions
%% for the service that the resource belongs to as well as permissions for
%% adding tags. For more information, see this list.
%%
%% </li> </ul> Do not store personally identifiable information (PII) or
%% other confidential or sensitive information in tags. We use tags to
%% provide you with billing and administration services. Tags are not
%% intended to be used for private or sensitive data.
tag_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resources(Client, Input, []).
tag_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResources">>, Input, Options).

%% @doc Removes the specified tags from the specified resources.
%%
%% When you specify a tag key, the action removes both that key and its
%% associated value. The operation succeeds even if you attempt to remove
%% tags from a resource that were already removed. Note the following:
%%
%% <ul> <li> To remove tags from a resource, you need the necessary
%% permissions for the service that the resource belongs to as well as
%% permissions for removing tags. For more information, see this list.
%%
%% </li> <li> You can only tag resources that are located in the specified
%% Region for the AWS account.
%%
%% </li> </ul>
untag_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resources(Client, Input, []).
untag_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResources">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"tagging">>},
    Host = build_host(<<"tagging">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ResourceGroupsTaggingAPI_20170126.", Action/binary>>}
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
