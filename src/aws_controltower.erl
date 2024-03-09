%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc These interfaces allow you to apply the Amazon Web Services library
%% of pre-defined
%% controls to your organizational units, programmatically.
%%
%% In Amazon Web Services Control Tower, the terms &quot;control&quot; and
%% &quot;guardrail&quot; are synonyms.
%%
%% To call these APIs, you'll need to know:
%%
%% the `controlIdentifier' for the control--or guardrail--you are
%% targeting.
%%
%% the ARN associated with the target organizational unit (OU), which we call
%% the `targetIdentifier'.
%%
%% the ARN associated with a resource that you wish to tag or untag.
%%
%% To get the `controlIdentifier' for your Amazon Web Services Control
%% Tower
%% control:
%%
%% The `controlIdentifier' is an ARN that is specified for each
%% control. You can view the `controlIdentifier' in the console on the
%% Control details page, as well as in the documentation.
%%
%% The `controlIdentifier' is unique in each Amazon Web Services Region
%% for each control. You can
%% find the `controlIdentifier' for each Region and control in the Tables
%% of control metadata:
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-metadata-tables.html
%% in the Amazon Web Services Control Tower User Guide.
%%
%% A quick-reference list of control identifers for the Amazon Web Services
%% Control Tower legacy Strongly recommended and
%% Elective controls is given in Resource identifiers for
%% APIs and controls:
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html.html
%% in the Controls reference guide section:
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html
%% of the Amazon Web Services Control Tower User Guide. Remember that
%% Mandatory controls
%% cannot be added or removed.
%%
%% ARN format:
%% `arn:aws:controltower:{REGION}::control/{CONTROL_NAME}'
%%
%% Example:
%%
%% `arn:aws:controltower:us-west-2::control/AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED'
%%
%% To get the `targetIdentifier':
%%
%% The `targetIdentifier' is the ARN for an OU.
%%
%% In the Amazon Web Services Organizations console, you can find the ARN for
%% the OU on the Organizational unit details page associated with that OU.
%%
%% OU ARN format:
%%
%% `arn:${Partition}:organizations::${MasterAccountId}:ou/o-${OrganizationId}/ou-${OrganizationalUnitId}'
%%
%% == Details and examples ==
%%
%% Control API input and output examples with CLI:
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
%%
%% Enable controls with CloudFormation:
%% https://docs.aws.amazon.com/controltower/latest/userguide/enable-controls.html
%%
%% Control metadata tables:
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-metadata-tables.html
%%
%% List of identifiers for legacy controls:
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html
%%
%% Controls reference guide:
%% https://docs.aws.amazon.com/controltower/latest/userguide/controls.html
%%
%% Controls library groupings:
%% https://docs.aws.amazon.com/controltower/latest/userguide/controls-reference.html
%%
%% Creating Amazon Web Services Control Tower resources with Amazon Web
%% Services CloudFormation:
%% https://docs.aws.amazon.com/controltower/latest/userguide/creating-resources-with-cloudformation.html
%%
%% To view the open source resource repository on GitHub, see
%% aws-cloudformation/aws-cloudformation-resource-providers-controltower:
%% https://github.com/aws-cloudformation/aws-cloudformation-resource-providers-controltower
%%
%% Recording API Requests
%%
%% Amazon Web Services Control Tower supports Amazon Web Services CloudTrail,
%% a service that records Amazon Web Services API calls for your
%% Amazon Web Services account and delivers log files to an Amazon S3 bucket.
%% By using information collected by
%% CloudTrail, you can determine which requests the Amazon Web Services
%% Control Tower service received, who made
%% the request and when, and so on. For more about Amazon Web Services
%% Control Tower and its support for
%% CloudTrail, see Logging Amazon Web Services Control Tower
%% Actions with Amazon Web Services CloudTrail:
%% https://docs.aws.amazon.com/controltower/latest/userguide/logging-using-cloudtrail.html
%% in the Amazon Web Services Control Tower User Guide. To learn more about
%% CloudTrail, including how to turn it on and find your log files, see the
%% Amazon Web Services CloudTrail User
%% Guide.
-module(aws_controltower).

-export([create_landing_zone/2,
         create_landing_zone/3,
         delete_landing_zone/2,
         delete_landing_zone/3,
         disable_baseline/2,
         disable_baseline/3,
         disable_control/2,
         disable_control/3,
         enable_baseline/2,
         enable_baseline/3,
         enable_control/2,
         enable_control/3,
         get_baseline/2,
         get_baseline/3,
         get_baseline_operation/2,
         get_baseline_operation/3,
         get_control_operation/2,
         get_control_operation/3,
         get_enabled_baseline/2,
         get_enabled_baseline/3,
         get_enabled_control/2,
         get_enabled_control/3,
         get_landing_zone/2,
         get_landing_zone/3,
         get_landing_zone_operation/2,
         get_landing_zone_operation/3,
         list_baselines/2,
         list_baselines/3,
         list_enabled_baselines/2,
         list_enabled_baselines/3,
         list_enabled_controls/2,
         list_enabled_controls/3,
         list_landing_zones/2,
         list_landing_zones/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reset_enabled_baseline/2,
         reset_enabled_baseline/3,
         reset_landing_zone/2,
         reset_landing_zone/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_enabled_baseline/2,
         update_enabled_baseline/3,
         update_enabled_control/2,
         update_enabled_control/3,
         update_landing_zone/2,
         update_landing_zone/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new landing zone.
%%
%% This API call starts an asynchronous operation that creates and configures
%% a landing zone,
%% based on the parameters specified in the manifest JSON file.
create_landing_zone(Client, Input) ->
    create_landing_zone(Client, Input, []).
create_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-landingzone"],
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

%% @doc Decommissions a landing zone.
%%
%% This API call starts an asynchronous operation that deletes Amazon Web
%% Services Control Tower
%% resources deployed in accounts managed by Amazon Web Services Control
%% Tower.
delete_landing_zone(Client, Input) ->
    delete_landing_zone(Client, Input, []).
delete_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-landingzone"],
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

%% @doc Disable an `EnabledBaseline' resource on the specified Target.
%%
%% This API starts an asynchronous operation to remove all resources deployed
%% as part of the baseline enablement. The resource will vary depending on
%% the enabled baseline.
disable_baseline(Client, Input) ->
    disable_baseline(Client, Input, []).
disable_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disable-baseline"],
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

%% @doc This API call turns off a control.
%%
%% It starts an asynchronous operation that deletes AWS
%% resources on the specified organizational unit and the accounts it
%% contains. The resources
%% will vary according to the control that you specify. For usage examples,
%% see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html.
disable_control(Client, Input) ->
    disable_control(Client, Input, []).
disable_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disable-control"],
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

%% @doc Enable (apply) a `Baseline' to a Target.
%%
%% This API starts an asynchronous operation to deploy resources specified by
%% the `Baseline' to the specified Target.
enable_baseline(Client, Input) ->
    enable_baseline(Client, Input, []).
enable_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enable-baseline"],
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

%% @doc This API call activates a control.
%%
%% It starts an asynchronous operation that creates Amazon Web Services
%% resources on the specified organizational unit and the accounts it
%% contains. The resources
%% created will vary according to the control that you specify. For usage
%% examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html.
enable_control(Client, Input) ->
    enable_control(Client, Input, []).
enable_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enable-control"],
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

%% @doc Retrieve details about an existing `Baseline' resource by
%% specifying its identifier.
get_baseline(Client, Input) ->
    get_baseline(Client, Input, []).
get_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-baseline"],
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

%% @doc Returns the details of an asynchronous baseline operation, as
%% initiated by any of these APIs: `EnableBaseline',
%% `DisableBaseline', `UpdateEnabledBaseline',
%% `ResetEnabledBaseline'.
%%
%% A status message is displayed in case of operation failure.
get_baseline_operation(Client, Input) ->
    get_baseline_operation(Client, Input, []).
get_baseline_operation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-baseline-operation"],
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

%% @doc Returns the status of a particular `EnableControl' or
%% `DisableControl' operation.
%%
%% Displays a message in case of error. Details for an
%% operation are available for 90 days. For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html.
get_control_operation(Client, Input) ->
    get_control_operation(Client, Input, []).
get_control_operation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-control-operation"],
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

%% @doc Retrieve details of an `EnabledBaseline' resource by specifying
%% its identifier.
get_enabled_baseline(Client, Input) ->
    get_enabled_baseline(Client, Input, []).
get_enabled_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-enabled-baseline"],
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

%% @doc Retrieves details about an enabled control.
%%
%% For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html.
get_enabled_control(Client, Input) ->
    get_enabled_control(Client, Input, []).
get_enabled_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-enabled-control"],
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

%% @doc Returns details about the landing zone.
%%
%% Displays a message in case of error.
get_landing_zone(Client, Input) ->
    get_landing_zone(Client, Input, []).
get_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-landingzone"],
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

%% @doc Returns the status of the specified landing zone operation.
%%
%% Details for an operation are available for
%% 60 days.
get_landing_zone_operation(Client, Input) ->
    get_landing_zone_operation(Client, Input, []).
get_landing_zone_operation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-landingzone-operation"],
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

%% @doc Returns a summary list of all available baselines.
list_baselines(Client, Input) ->
    list_baselines(Client, Input, []).
list_baselines(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-baselines"],
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

%% @doc Returns a list of summaries describing `EnabledBaseline'
%% resources.
%%
%% You can filter the list by the corresponding `Baseline' or
%% `Target' of the `EnabledBaseline' resources.
list_enabled_baselines(Client, Input) ->
    list_enabled_baselines(Client, Input, []).
list_enabled_baselines(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-enabled-baselines"],
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

%% @doc Lists the controls enabled by Amazon Web Services Control Tower on
%% the specified organizational unit and
%% the accounts it contains.
%%
%% For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html.
list_enabled_controls(Client, Input) ->
    list_enabled_controls(Client, Input, []).
list_enabled_controls(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-enabled-controls"],
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

%% @doc Returns the landing zone ARN for the landing zone deployed in your
%% managed account.
%%
%% This API also
%% creates an ARN for existing accounts that do not yet have a landing zone
%% ARN.
%%
%% Returns one landing zone ARN.
list_landing_zones(Client, Input) ->
    list_landing_zones(Client, Input, []).
list_landing_zones(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-landingzones"],
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

%% @doc Returns a list of tags associated with the resource.
%%
%% For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Re-enables an `EnabledBaseline' resource.
%%
%% For example, this API can re-apply the existing `Baseline' after a new
%% member account is moved to the target OU.
reset_enabled_baseline(Client, Input) ->
    reset_enabled_baseline(Client, Input, []).
reset_enabled_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reset-enabled-baseline"],
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

%% @doc This API call resets a landing zone.
%%
%% It starts an asynchronous operation that resets the
%% landing zone to the parameters specified in its original configuration.
reset_landing_zone(Client, Input) ->
    reset_landing_zone(Client, Input, []).
reset_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reset-landingzone"],
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

%% @doc Applies tags to a resource.
%%
%% For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags from a resource.
%%
%% For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an `EnabledBaseline' resource's applied parameters or
%% version.
update_enabled_baseline(Client, Input) ->
    update_enabled_baseline(Client, Input, []).
update_enabled_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-enabled-baseline"],
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

%% @doc
%% Updates the configuration of an already enabled control.
%%
%% If the enabled control shows an `EnablementStatus' of SUCCEEDED,
%% supply parameters that are different from the currently configured
%% parameters. Otherwise, Amazon Web Services Control Tower will not accept
%% the request.
%%
%% If the enabled control shows an `EnablementStatus' of FAILED, Amazon
%% Web Services Control Tower will update the control to match any valid
%% parameters that you supply.
%%
%% If the `DriftSummary' status for the control shows as DRIFTED, you
%% cannot call this API. Instead, you can update the control by calling
%% `DisableControl' and again calling `EnableControl', or you can run
%% an extending governance operation. For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
update_enabled_control(Client, Input) ->
    update_enabled_control(Client, Input, []).
update_enabled_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-enabled-control"],
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

%% @doc This API call updates the landing zone.
%%
%% It starts an asynchronous operation that updates the
%% landing zone based on the new landing zone version, or on the changed
%% parameters specified in the
%% updated manifest file.
update_landing_zone(Client, Input) ->
    update_landing_zone(Client, Input, []).
update_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-landingzone"],
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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
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
    Client1 = Client#{service => <<"controltower">>},
    Host = build_host(<<"controltower">>, Client1),
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
