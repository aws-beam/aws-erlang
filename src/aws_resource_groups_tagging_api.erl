%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Resource Groups Tagging API</fullname>
%%
%% This guide describes the API operations for the resource groups tagging.
%%
%% A tag is a label that you assign to an AWS resource. A tag consists of a
%% key and a value, both of which you define. For example, if you have two
%% Amazon EC2 instances, you might assign both a tag key of "Stack." But the
%% value of "Stack" might be "Testing" for one and "Production" for the
%% other.
%%
%% <important> Do not store personally identifiable information (PII) or
%% other confidential or sensitive information in tags. We use tags to
%% provide you with billing and administration services. Tags are not
%% intended to be used for private or sensitive data.
%%
%% </important> Tagging can help you organize your resources and enables you
%% to simplify resource management, access management and cost allocation.
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
%% <ul> <li> <code>tag:GetResources</code>
%%
%% </li> <li> <code>tag:TagResources</code>
%%
%% </li> <li> <code>tag:UntagResources</code>
%%
%% </li> <li> <code>tag:GetTagKeys</code>
%%
%% </li> <li> <code>tag:GetTagValues</code>
%%
%% </li> </ul> You'll also need permissions to access the resources of
%% individual services so that you can tag and untag those resources.
%%
%% For more information on IAM policies, see <a
%% href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage.html">Managing
%% IAM Policies</a> in the <i>IAM User Guide</i>.
%%
%% <i> <b>Services that support the Resource Groups Tagging API</b> </i>
%%
%% You can use the Resource Groups Tagging API to tag resources for the
%% following AWS services.
%%
%% <ul> <li> <a href="https://docs.aws.amazon.com/a4b">Alexa for Business
%% (a4b)</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/apigateway">API
%% Gateway</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/appstream2">Amazon
%% AppStream</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/appsync">AWS AppSync</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/app-mesh">AWS App Mesh</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/athena">Amazon Athena</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide">Amazon
%% Aurora</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/aws-backup">AWS Backup</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/acm">AWS Certificate
%% Manager</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/acm">AWS Certificate
%% Manager Private CA</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/clouddirectory">Amazon
%% Cloud Directory</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/cloud-map">AWS Cloud
%% Map</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/cloudformation">AWS
%% CloudFormation</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/cloudfront">Amazon
%% CloudFront</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/cloudhsm">AWS CloudHSM</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/cloudtrail">AWS
%% CloudTrail</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/cloudwatch">Amazon
%% CloudWatch (alarms only)</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/cloudwatch/?id=docs_gateway#amazon-cloudwatch-events">Amazon
%% CloudWatch Events</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/cloudwatch/?id=docs_gateway#amazon-cloudwatch-logs">Amazon
%% CloudWatch Logs</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/cloudwatch">Amazon
%% Cloudwatch Synthetics</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/codebuild">AWS
%% CodeBuild</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/codecommit">AWS
%% CodeCommit</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/codepipeline">AWS
%% CodePipeline</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/codestar">AWS CodeStar</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/codestar-connections/latest/APIReference/">AWS
%% CodeStar Connections</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/cognito">Amazon Cognito
%% Identity</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/cognito">Amazon Cognito
%% User Pools</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/comprehend">Amazon
%% Comprehend</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/config">AWS Config</a>
%%
%% </li> <li> <a
%% href="http://aws.amazon.com/connect/resources/?whats-new-cards#Documentation">Amazon
%% Connect</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/data-exchange">AWS Data
%% Exchange</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/data-pipeline">AWS Data
%% Pipeline</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/dms">AWS Database
%% Migration Service</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/datasync">AWS DataSync</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/devicefarm">AWS Device
%% Farm</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/directconnect">AWS Direct
%% Connect</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/directory-service">AWS
%% Directory Service</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/dynamodb">Amazon
%% DynamoDB</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/ebs">Amazon EBS</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/ec2">Amazon EC2</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/imagebuilder">EC2 Image
%% Builder</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/ecr">Amazon ECR</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/ecs">Amazon ECS</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/eks">Amazon EKS</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/elastic-beanstalk">AWS
%% Elastic Beanstalk</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/efs">Amazon Elastic File
%% System</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/elasticloadbalancing">Elastic Load
%% Balancing</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/elasticache">Amazon
%% ElastiCache</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/elasticsearch-service">Amazon
%% Elasticsearch Service</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/medialive">AWS Elemental
%% MediaLive</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/mediapackage">AWS
%% Elemental MediaPackage</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/mediapackage">AWS
%% Elemental MediaPackage VoD</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/mediatailor">AWS Elemental
%% MediaTailor</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/emr">Amazon EMR</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/eventbridge">Amazon
%% EventBridge Schema</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/firewall-manager">AWS
%% Firewall Manager</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/frauddetector">Amazon
%% Fraud Detector</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/fsx">Amazon FSx</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/s3/?id=docs_gateway#amazon-s3-glacier">Amazon
%% S3 Glacier</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/global-accelerator">AWS
%% Global Accelerator</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/ground-station">AWS Ground
%% Station</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/glue">AWS Glue</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/guardduty">Amazon
%% GuardDuty</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/inspector">Amazon
%% Inspector</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/iotanalytics">AWS IoT
%% Analytics</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/iot">AWS IoT Core</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/iot-device-defender">AWS
%% IoT Device Defender</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/iot-device-management">AWS
%% IoT Device Management</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/iotevents">AWS IoT
%% Events</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/greengrass">AWS IoT
%% Greengrass</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/iot-1-click">AWS IoT
%% 1-Click</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/iot-sitewise">AWS IoT
%% Sitewise</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/thingsgraph">AWS IoT
%% Things Graph</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/kendra">Amazon Kendra</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/kms">AWS Key Management
%% Service</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/kinesis">Amazon
%% Kinesis</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/kinesis/?id=docs_gateway#amazon-kinesis-data-analytics">Amazon
%% Kinesis Data Analytics</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/kinesis/?id=docs_gateway#amazon-kinesis-data-firehose">Amazon
%% Kinesis Data Firehose</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/lambda">AWS Lambda</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/lex">Amazon Lex</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/license-manager">AWS
%% License Manager</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/macie">Amazon Macie</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/machine-learning">Amazon
%% Machine Learning</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/amazon-mq">Amazon MQ</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/msk">Amazon MSK</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/neptune">Amazon
%% Neptune</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/opsworks">AWS OpsWorks</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/opsworks">AWS OpsWorks
%% CM</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/organizations">AWS
%% Organizations</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/pinpoint">Amazon
%% Pinpoint</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/qldb">Amazon Quantum
%% Ledger Database (QLDB)</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/rds">Amazon RDS</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/redshift">Amazon
%% Redshift</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/ram">AWS Resource Access
%% Manager</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/ARG">AWS Resource
%% Groups</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/robomaker">AWS
%% RoboMaker</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/route53">Amazon Route
%% 53</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/route53">Amazon Route 53
%% Resolver</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/s3">Amazon S3 (buckets
%% only)</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/sagemaker">Amazon
%% SageMaker</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/savingsplans">Savings
%% Plans</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/secretsmanager">AWS
%% Secrets Manager</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/securityhub">AWS Security
%% Hub</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/servicecatalog">AWS
%% Service Catalog</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/ses">Amazon Simple Email
%% Service (SES)</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/sns">Amazon Simple
%% Notification Service (SNS)</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/sqs">Amazon Simple Queue
%% Service (SQS)</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/swf">Amazon Simple
%% Workflow Service</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/step-functions">AWS Step
%% Functions</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/storagegateway">AWS
%% Storage Gateway</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/systems-manager">AWS
%% Systems Manager</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/transfer">AWS Transfer for
%% SFTP</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/vpc">Amazon VPC</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/waf">AWS WAFv2</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/waf">AWS WAF Regional</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/worklink">Amazon
%% WorkLink</a>
%%
%% </li> <li> <a href="https://docs.aws.amazon.com/workspaces">Amazon
%% WorkSpaces</a>
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

%% @doc Describes the status of the <code>StartReportCreation</code>
%% operation.
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
%% For more information on tag policies, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">Tag
%% Policies</a> in the <i>AWS Organizations User Guide.</i>
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
%% <ul> <li> <i>Filters</i> that specify what tags and resource types you
%% want returned. The response includes all tags that are associated with the
%% requested resources.
%%
%% </li> <li> Information about compliance with the account's effective tag
%% policy. For more information on tag policies, see <a
%% href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">Tag
%% Policies</a> in the <i>AWS Organizations User Guide.</i>
%%
%% </li> </ul> <note> You can check the <code>PaginationToken</code> response
%% parameter to determine if a query is complete. Queries occasionally return
%% fewer results on a page than allowed. The <code>PaginationToken</code>
%% response parameter value is <code>null</code> <i>only</i> when there are
%% no more results to display.
%%
%% </note>
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
%% effective tag policy. Compliance data is refreshed daily.
%%
%% The generated report is saved to the following location:
%%
%% <code>s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv</code>
%%
%% You can call this operation only from the organization's master account
%% and from the us-east-1 Region.
start_report_creation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_report_creation(Client, Input, []).
start_report_creation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReportCreation">>, Input, Options).

%% @doc Applies one or more tags to the specified resources. Note the
%% following:
%%
%% <ul> <li> Not all resources can have tags. For a list of services that
%% support tagging, see <a
%% href="http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html">this
%% list</a>.
%%
%% </li> <li> Each resource can have up to 50 tags. For other limits, see <a
%% href="http://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions">Tag
%% Naming and Usage Conventions</a> in the <i>AWS General Reference.</i>
%%
%% </li> <li> You can only tag resources that are located in the specified
%% Region for the AWS account.
%%
%% </li> <li> To add tags to a resource, you need the necessary permissions
%% for the service that the resource belongs to as well as permissions for
%% adding tags. For more information, see <a
%% href="http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html">this
%% list</a>.
%%
%% </li> </ul> <important> Do not store personally identifiable information
%% (PII) or other confidential or sensitive information in tags. We use tags
%% to provide you with billing and administration services. Tags are not
%% intended to be used for private or sensitive data.
%%
%% </important>
tag_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resources(Client, Input, []).
tag_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResources">>, Input, Options).

%% @doc Removes the specified tags from the specified resources. When you
%% specify a tag key, the action removes both that key and its associated
%% value. The operation succeeds even if you attempt to remove tags from a
%% resource that were already removed. Note the following:
%%
%% <ul> <li> To remove tags from a resource, you need the necessary
%% permissions for the service that the resource belongs to as well as
%% permissions for removing tags. For more information, see <a
%% href="http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html">this
%% list</a>.
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
