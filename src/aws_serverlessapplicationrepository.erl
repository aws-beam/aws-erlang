%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Serverless Application Repository makes it easy for
%% developers and enterprises to quickly find
%% and deploy serverless applications in the AWS Cloud.
%%
%% For more information about serverless applications,
%% see Serverless Computing and Applications on the AWS website.
%%
%% The AWS Serverless Application Repository is deeply integrated with the
%% AWS Lambda console, so that developers of
%% all levels can get started with serverless computing without needing to
%% learn anything new. You can use category
%% keywords to browse for applications such as web and mobile backends, data
%% processing applications, or chatbots.
%% You can also search for applications by name, publisher, or event source.
%% To use an application, you simply choose it,
%% configure any required fields, and deploy it with a few clicks.
%%
%% You can also easily publish applications, sharing them publicly with the
%% community at large, or privately
%% within your team or across your organization. To publish a serverless
%% application (or app), you can use the
%% AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs
%% to upload the code. Along with the
%% code, you upload a simple manifest file, also known as the AWS Serverless
%% Application Model (AWS SAM) template.
%% For more information about AWS SAM, see AWS Serverless Application Model
%% (AWS SAM) on the AWS Labs
%% GitHub repository.
%%
%% The AWS Serverless Application Repository Developer Guide contains more
%% information about the two developer
%% experiences available:
%%
%% Consuming Applications – Browse for applications and view information
%% about them, including
%% source code and readme files. Also install, configure, and deploy
%% applications of your choosing.
%%
%% Publishing Applications – Configure and upload applications to make them
%% available to other
%% developers, and publish new versions of applications.
-module(aws_serverlessapplicationrepository).

-export([create_application/2,
         create_application/3,
         create_application_version/4,
         create_application_version/5,
         create_cloud_formation_change_set/3,
         create_cloud_formation_change_set/4,
         create_cloud_formation_template/3,
         create_cloud_formation_template/4,
         delete_application/3,
         delete_application/4,
         get_application/2,
         get_application/4,
         get_application/5,
         get_application_policy/2,
         get_application_policy/4,
         get_application_policy/5,
         get_cloud_formation_template/3,
         get_cloud_formation_template/5,
         get_cloud_formation_template/6,
         list_application_dependencies/2,
         list_application_dependencies/4,
         list_application_dependencies/5,
         list_application_versions/2,
         list_application_versions/4,
         list_application_versions/5,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         put_application_policy/3,
         put_application_policy/4,
         unshare_application/3,
         unshare_application/4,
         update_application/3,
         update_application/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_application_dependencies_response() :: #{
%%   <<"Dependencies">> => list(application_dependency_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_application_dependencies_response() :: #{binary() => any()}.


%% Example:
%% get_cloud_formation_template_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"ExpirationTime">> => string(),
%%   <<"SemanticVersion">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TemplateId">> => string(),
%%   <<"TemplateUrl">> => string()
%% }
-type get_cloud_formation_template_response() :: #{binary() => any()}.


%% Example:
%% application_dependency_summary() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"SemanticVersion">> => string()
%% }
-type application_dependency_summary() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.

%% Example:
%% get_cloud_formation_template_request() :: #{}
-type get_cloud_formation_template_request() :: #{}.


%% Example:
%% parameter_definition() :: #{
%%   <<"AllowedPattern">> => string(),
%%   <<"AllowedValues">> => list(string()),
%%   <<"ConstraintDescription">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string(),
%%   <<"MaxLength">> => integer(),
%%   <<"MaxValue">> => integer(),
%%   <<"MinLength">> => integer(),
%%   <<"MinValue">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NoEcho">> => boolean(),
%%   <<"ReferencedByResources">> => list(string()),
%%   <<"Type">> => string()
%% }
-type parameter_definition() :: #{binary() => any()}.


%% Example:
%% create_application_version_request() :: #{
%%   <<"SourceCodeArchiveUrl">> => string(),
%%   <<"SourceCodeUrl">> => string(),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateUrl">> => string()
%% }
-type create_application_version_request() :: #{binary() => any()}.


%% Example:
%% create_application_version_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"ParameterDefinitions">> => list(parameter_definition()),
%%   <<"RequiredCapabilities">> => list(list(any())()),
%%   <<"ResourcesSupported">> => boolean(),
%%   <<"SemanticVersion">> => string(),
%%   <<"SourceCodeArchiveUrl">> => string(),
%%   <<"SourceCodeUrl">> => string(),
%%   <<"TemplateUrl">> => string()
%% }
-type create_application_version_response() :: #{binary() => any()}.


%% Example:
%% get_application_policy_response() :: #{
%%   <<"Statements">> => list(application_policy_statement())
%% }
-type get_application_policy_response() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% version_summary() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"SemanticVersion">> => string(),
%%   <<"SourceCodeUrl">> => string()
%% }
-type version_summary() :: #{binary() => any()}.


%% Example:
%% parameter_value() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type parameter_value() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% put_application_policy_request() :: #{
%%   <<"Statements">> := list(application_policy_statement())
%% }
-type put_application_policy_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"Author">> := string(),
%%   <<"Description">> := string(),
%%   <<"HomePageUrl">> => string(),
%%   <<"Labels">> => list(string()),
%%   <<"LicenseBody">> => string(),
%%   <<"LicenseUrl">> => string(),
%%   <<"Name">> := string(),
%%   <<"ReadmeBody">> => string(),
%%   <<"ReadmeUrl">> => string(),
%%   <<"SemanticVersion">> => string(),
%%   <<"SourceCodeArchiveUrl">> => string(),
%%   <<"SourceCodeUrl">> => string(),
%%   <<"SpdxLicenseId">> => string(),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateUrl">> => string()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% create_cloud_formation_template_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"ExpirationTime">> => string(),
%%   <<"SemanticVersion">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TemplateId">> => string(),
%%   <<"TemplateUrl">> => string()
%% }
-type create_cloud_formation_template_response() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Author">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"HomePageUrl">> => string(),
%%   <<"IsVerifiedAuthor">> => boolean(),
%%   <<"Labels">> => list(string()),
%%   <<"LicenseUrl">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReadmeUrl">> => string(),
%%   <<"SpdxLicenseId">> => string(),
%%   <<"VerifiedAuthorUrl">> => string(),
%%   <<"Version">> => version()
%% }
-type create_application_response() :: #{binary() => any()}.


%% Example:
%% list_application_dependencies_request() :: #{
%%   <<"MaxItems">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SemanticVersion">> => string()
%% }
-type list_application_dependencies_request() :: #{binary() => any()}.


%% Example:
%% version() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"ParameterDefinitions">> => list(parameter_definition()),
%%   <<"RequiredCapabilities">> => list(list(any())()),
%%   <<"ResourcesSupported">> => boolean(),
%%   <<"SemanticVersion">> => string(),
%%   <<"SourceCodeArchiveUrl">> => string(),
%%   <<"SourceCodeUrl">> => string(),
%%   <<"TemplateUrl">> => string()
%% }
-type version() :: #{binary() => any()}.


%% Example:
%% update_application_request() :: #{
%%   <<"Author">> => string(),
%%   <<"Description">> => string(),
%%   <<"HomePageUrl">> => string(),
%%   <<"Labels">> => list(string()),
%%   <<"ReadmeBody">> => string(),
%%   <<"ReadmeUrl">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.


%% Example:
%% update_application_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Author">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"HomePageUrl">> => string(),
%%   <<"IsVerifiedAuthor">> => boolean(),
%%   <<"Labels">> => list(string()),
%%   <<"LicenseUrl">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReadmeUrl">> => string(),
%%   <<"SpdxLicenseId">> => string(),
%%   <<"VerifiedAuthorUrl">> => string(),
%%   <<"Version">> => version()
%% }
-type update_application_response() :: #{binary() => any()}.


%% Example:
%% get_application_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Author">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"HomePageUrl">> => string(),
%%   <<"IsVerifiedAuthor">> => boolean(),
%%   <<"Labels">> => list(string()),
%%   <<"LicenseUrl">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReadmeUrl">> => string(),
%%   <<"SpdxLicenseId">> => string(),
%%   <<"VerifiedAuthorUrl">> => string(),
%%   <<"Version">> => version()
%% }
-type get_application_response() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"MaxItems">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.

%% Example:
%% get_application_policy_request() :: #{}
-type get_application_policy_request() :: #{}.


%% Example:
%% create_cloud_formation_change_set_request() :: #{
%%   <<"Capabilities">> => list(string()),
%%   <<"ChangeSetName">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"NotificationArns">> => list(string()),
%%   <<"ParameterOverrides">> => list(parameter_value()),
%%   <<"ResourceTypes">> => list(string()),
%%   <<"RollbackConfiguration">> => rollback_configuration(),
%%   <<"SemanticVersion">> => string(),
%%   <<"StackName">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TemplateId">> => string()
%% }
-type create_cloud_formation_change_set_request() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% application_policy_statement() :: #{
%%   <<"Actions">> => list(string()),
%%   <<"PrincipalOrgIDs">> => list(string()),
%%   <<"Principals">> => list(string()),
%%   <<"StatementId">> => string()
%% }
-type application_policy_statement() :: #{binary() => any()}.


%% Example:
%% list_application_versions_request() :: #{
%%   <<"MaxItems">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_versions_request() :: #{binary() => any()}.


%% Example:
%% application_summary() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Author">> => string(),
%%   <<"CreationTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"HomePageUrl">> => string(),
%%   <<"Labels">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"SpdxLicenseId">> => string()
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% unshare_application_request() :: #{
%%   <<"OrganizationId">> := string()
%% }
-type unshare_application_request() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"Applications">> => list(application_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.


%% Example:
%% list_application_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Versions">> => list(version_summary())
%% }
-type list_application_versions_response() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% rollback_configuration() :: #{
%%   <<"MonitoringTimeInMinutes">> => integer(),
%%   <<"RollbackTriggers">> => list(rollback_trigger())
%% }
-type rollback_configuration() :: #{binary() => any()}.


%% Example:
%% rollback_trigger() :: #{
%%   <<"Arn">> => string(),
%%   <<"Type">> => string()
%% }
-type rollback_trigger() :: #{binary() => any()}.


%% Example:
%% put_application_policy_response() :: #{
%%   <<"Statements">> => list(application_policy_statement())
%% }
-type put_application_policy_response() :: #{binary() => any()}.


%% Example:
%% get_application_request() :: #{
%%   <<"SemanticVersion">> => string()
%% }
-type get_application_request() :: #{binary() => any()}.


%% Example:
%% create_cloud_formation_template_request() :: #{
%%   <<"SemanticVersion">> => string()
%% }
-type create_cloud_formation_template_request() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{}
-type delete_application_request() :: #{}.


%% Example:
%% create_cloud_formation_change_set_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"ChangeSetId">> => string(),
%%   <<"SemanticVersion">> => string(),
%%   <<"StackId">> => string()
%% }
-type create_cloud_formation_change_set_response() :: #{binary() => any()}.

-type create_application_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_application_version_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_cloud_formation_change_set_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_cloud_formation_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_application_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_application_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_application_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type get_cloud_formation_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_application_dependencies_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_application_versions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_applications_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type put_application_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type unshare_application_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_application_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application, optionally including an AWS SAM file to
%% create the first application version in the same call.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an application version.
-spec create_application_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_application_version_request()) ->
    {ok, create_application_version_response(), tuple()} |
    {error, any()} |
    {error, create_application_version_errors(), tuple()}.
create_application_version(Client, ApplicationId, SemanticVersion, Input) ->
    create_application_version(Client, ApplicationId, SemanticVersion, Input, []).

-spec create_application_version(aws_client:aws_client(), binary() | list(), binary() | list(), create_application_version_request(), proplists:proplist()) ->
    {ok, create_application_version_response(), tuple()} |
    {error, any()} |
    {error, create_application_version_errors(), tuple()}.
create_application_version(Client, ApplicationId, SemanticVersion, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/versions/", aws_util:encode_uri(SemanticVersion), ""],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS CloudFormation change set for the given application.
-spec create_cloud_formation_change_set(aws_client:aws_client(), binary() | list(), create_cloud_formation_change_set_request()) ->
    {ok, create_cloud_formation_change_set_response(), tuple()} |
    {error, any()} |
    {error, create_cloud_formation_change_set_errors(), tuple()}.
create_cloud_formation_change_set(Client, ApplicationId, Input) ->
    create_cloud_formation_change_set(Client, ApplicationId, Input, []).

-spec create_cloud_formation_change_set(aws_client:aws_client(), binary() | list(), create_cloud_formation_change_set_request(), proplists:proplist()) ->
    {ok, create_cloud_formation_change_set_response(), tuple()} |
    {error, any()} |
    {error, create_cloud_formation_change_set_errors(), tuple()}.
create_cloud_formation_change_set(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/changesets"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS CloudFormation template.
-spec create_cloud_formation_template(aws_client:aws_client(), binary() | list(), create_cloud_formation_template_request()) ->
    {ok, create_cloud_formation_template_response(), tuple()} |
    {error, any()} |
    {error, create_cloud_formation_template_errors(), tuple()}.
create_cloud_formation_template(Client, ApplicationId, Input) ->
    create_cloud_formation_template(Client, ApplicationId, Input, []).

-spec create_cloud_formation_template(aws_client:aws_client(), binary() | list(), create_cloud_formation_template_request(), proplists:proplist()) ->
    {ok, create_cloud_formation_template_response(), tuple()} |
    {error, any()} |
    {error, create_cloud_formation_template_errors(), tuple()}.
create_cloud_formation_template(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/templates"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified application.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the specified application.
-spec get_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_response(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"semanticVersion">>, maps:get(<<"semanticVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the policy for the application.
-spec get_application_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_policy_response(), tuple()} |
    {error, any()} |
    {error, get_application_policy_errors(), tuple()}.
get_application_policy(Client, ApplicationId)
  when is_map(Client) ->
    get_application_policy(Client, ApplicationId, #{}, #{}).

-spec get_application_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_policy_response(), tuple()} |
    {error, any()} |
    {error, get_application_policy_errors(), tuple()}.
get_application_policy(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_policy(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_application_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_policy_response(), tuple()} |
    {error, any()} |
    {error, get_application_policy_errors(), tuple()}.
get_application_policy(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified AWS CloudFormation template.
-spec get_cloud_formation_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_cloud_formation_template_response(), tuple()} |
    {error, any()} |
    {error, get_cloud_formation_template_errors(), tuple()}.
get_cloud_formation_template(Client, ApplicationId, TemplateId)
  when is_map(Client) ->
    get_cloud_formation_template(Client, ApplicationId, TemplateId, #{}, #{}).

-spec get_cloud_formation_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_cloud_formation_template_response(), tuple()} |
    {error, any()} |
    {error, get_cloud_formation_template_errors(), tuple()}.
get_cloud_formation_template(Client, ApplicationId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cloud_formation_template(Client, ApplicationId, TemplateId, QueryMap, HeadersMap, []).

-spec get_cloud_formation_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cloud_formation_template_response(), tuple()} |
    {error, any()} |
    {error, get_cloud_formation_template_errors(), tuple()}.
get_cloud_formation_template(Client, ApplicationId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/templates/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of applications nested in the containing
%% application.
-spec list_application_dependencies(aws_client:aws_client(), binary() | list()) ->
    {ok, list_application_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_application_dependencies_errors(), tuple()}.
list_application_dependencies(Client, ApplicationId)
  when is_map(Client) ->
    list_application_dependencies(Client, ApplicationId, #{}, #{}).

-spec list_application_dependencies(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_application_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_application_dependencies_errors(), tuple()}.
list_application_dependencies(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_dependencies(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_application_dependencies(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_application_dependencies_response(), tuple()} |
    {error, any()} |
    {error, list_application_dependencies_errors(), tuple()}.
list_application_dependencies(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/dependencies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"semanticVersion">>, maps:get(<<"semanticVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists versions for the specified application.
-spec list_application_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_application_versions_response(), tuple()} |
    {error, any()} |
    {error, list_application_versions_errors(), tuple()}.
list_application_versions(Client, ApplicationId)
  when is_map(Client) ->
    list_application_versions(Client, ApplicationId, #{}, #{}).

-spec list_application_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_application_versions_response(), tuple()} |
    {error, any()} |
    {error, list_application_versions_errors(), tuple()}.
list_application_versions(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_versions(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_application_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_application_versions_response(), tuple()} |
    {error, any()} |
    {error, list_application_versions_errors(), tuple()}.
list_application_versions(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists applications owned by the requester.
-spec list_applications(aws_client:aws_client()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

-spec list_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the permission policy for an application.
%%
%% For the list of actions supported for this operation, see
%% Application
%% Permissions:
%% https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions
%% .
-spec put_application_policy(aws_client:aws_client(), binary() | list(), put_application_policy_request()) ->
    {ok, put_application_policy_response(), tuple()} |
    {error, any()} |
    {error, put_application_policy_errors(), tuple()}.
put_application_policy(Client, ApplicationId, Input) ->
    put_application_policy(Client, ApplicationId, Input, []).

-spec put_application_policy(aws_client:aws_client(), binary() | list(), put_application_policy_request(), proplists:proplist()) ->
    {ok, put_application_policy_response(), tuple()} |
    {error, any()} |
    {error, put_application_policy_errors(), tuple()}.
put_application_policy(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Unshares an application from an AWS Organization.
%%
%% This operation can be called only from the organization's master
%% account.
-spec unshare_application(aws_client:aws_client(), binary() | list(), unshare_application_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unshare_application_errors(), tuple()}.
unshare_application(Client, ApplicationId, Input) ->
    unshare_application(Client, ApplicationId, Input, []).

-spec unshare_application(aws_client:aws_client(), binary() | list(), unshare_application_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unshare_application_errors(), tuple()}.
unshare_application(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/unshare"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified application.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"serverlessrepo">>},
    Host = build_host(<<"serverlessrepo">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
