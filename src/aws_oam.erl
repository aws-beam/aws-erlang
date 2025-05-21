%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use Amazon CloudWatch Observability Access Manager to create and
%% manage links between source accounts and monitoring accounts by using
%% CloudWatch cross-account observability.
%%
%% With CloudWatch cross-account observability, you can monitor and
%% troubleshoot applications that span multiple accounts within a Region.
%% Seamlessly search, visualize, and analyze your metrics, logs, traces,
%% Application Signals services and service level objectives (SLOs),
%% Application Insights applications, and internet monitors in any of the
%% linked accounts without account boundaries.
%%
%% Set up one or more Amazon Web Services accounts as monitoring accounts and
%% link them with multiple source accounts. A monitoring account is a central
%% Amazon Web Services account that can view and interact with observability
%% data generated from source accounts. A source account is an individual
%% Amazon Web Services account that generates observability data for the
%% resources that reside in it. Source accounts share their observability
%% data with the monitoring account. The shared observability data can
%% include metrics in Amazon CloudWatch, logs in Amazon CloudWatch Logs,
%% traces in X-Ray, Application Signals services and service level objectives
%% (SLOs), applications in Amazon CloudWatch Application Insights, and
%% internet monitors in CloudWatch Internet Monitor.
%%
%% When you set up a link, you can choose to share the metrics from all
%% namespaces with the monitoring account, or filter to a subset of
%% namespaces. And for CloudWatch Logs, you can choose to share all log
%% groups with the monitoring account, or filter to a subset of log groups.
-module(aws_oam).

-export([create_link/2,
         create_link/3,
         create_sink/2,
         create_sink/3,
         delete_link/2,
         delete_link/3,
         delete_sink/2,
         delete_sink/3,
         get_link/2,
         get_link/3,
         get_sink/2,
         get_sink/3,
         get_sink_policy/2,
         get_sink_policy/3,
         list_attached_links/2,
         list_attached_links/3,
         list_links/2,
         list_links/3,
         list_sinks/2,
         list_sinks/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_sink_policy/2,
         put_sink_policy/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_link/2,
         update_link/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_sink_input() :: #{
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_sink_input() :: #{binary() => any()}.


%% Example:
%% get_link_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => [string()],
%%   <<"Label">> => [string()],
%%   <<"LabelTemplate">> => [string()],
%%   <<"LinkConfiguration">> => link_configuration(),
%%   <<"ResourceTypes">> => list([string()]()),
%%   <<"SinkArn">> => [string()],
%%   <<"Tags">> => map()
%% }
-type get_link_output() :: #{binary() => any()}.


%% Example:
%% delete_link_input() :: #{
%%   <<"Identifier">> := string()
%% }
-type delete_link_input() :: #{binary() => any()}.


%% Example:
%% metric_configuration() :: #{
%%   <<"Filter">> => string()
%% }
-type metric_configuration() :: #{binary() => any()}.


%% Example:
%% log_group_configuration() :: #{
%%   <<"Filter">> => string()
%% }
-type log_group_configuration() :: #{binary() => any()}.


%% Example:
%% missing_required_parameter_exception() :: #{
%%   <<"amznErrorType">> => [string()],
%%   <<"message">> => [string()]
%% }
-type missing_required_parameter_exception() :: #{binary() => any()}.

%% Example:
%% delete_sink_output() :: #{}
-type delete_sink_output() :: #{}.


%% Example:
%% list_links_output() :: #{
%%   <<"Items">> => list(list_links_item()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_links_output() :: #{binary() => any()}.


%% Example:
%% put_sink_policy_output() :: #{
%%   <<"Policy">> => [string()],
%%   <<"SinkArn">> => [string()],
%%   <<"SinkId">> => [string()]
%% }
-type put_sink_policy_output() :: #{binary() => any()}.


%% Example:
%% list_attached_links_output() :: #{
%%   <<"Items">> => list(list_attached_links_item()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_attached_links_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% delete_sink_input() :: #{
%%   <<"Identifier">> := string()
%% }
-type delete_sink_input() :: #{binary() => any()}.


%% Example:
%% get_sink_policy_input() :: #{
%%   <<"SinkIdentifier">> := string()
%% }
-type get_sink_policy_input() :: #{binary() => any()}.


%% Example:
%% get_sink_policy_output() :: #{
%%   <<"Policy">> => [string()],
%%   <<"SinkArn">> => [string()],
%%   <<"SinkId">> => [string()]
%% }
-type get_sink_policy_output() :: #{binary() => any()}.


%% Example:
%% list_attached_links_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SinkIdentifier">> := string()
%% }
-type list_attached_links_input() :: #{binary() => any()}.


%% Example:
%% create_link_input() :: #{
%%   <<"LabelTemplate">> := string(),
%%   <<"LinkConfiguration">> => link_configuration(),
%%   <<"ResourceTypes">> := list(list(any())()),
%%   <<"SinkIdentifier">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_link_input() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"amznErrorType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"amznErrorType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_attached_links_item() :: #{
%%   <<"Label">> => [string()],
%%   <<"LinkArn">> => [string()],
%%   <<"ResourceTypes">> => list([string()]())
%% }
-type list_attached_links_item() :: #{binary() => any()}.


%% Example:
%% list_links_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_links_input() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"amznErrorType">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_link_input() :: #{
%%   <<"Identifier">> := string(),
%%   <<"IncludeTags">> => boolean(),
%%   <<"LinkConfiguration">> => link_configuration(),
%%   <<"ResourceTypes">> := list(list(any())())
%% }
-type update_link_input() :: #{binary() => any()}.


%% Example:
%% create_sink_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"Tags">> => map()
%% }
-type create_sink_output() :: #{binary() => any()}.


%% Example:
%% get_sink_input() :: #{
%%   <<"Identifier">> := string(),
%%   <<"IncludeTags">> => boolean()
%% }
-type get_sink_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% create_link_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => [string()],
%%   <<"Label">> => [string()],
%%   <<"LabelTemplate">> => [string()],
%%   <<"LinkConfiguration">> => link_configuration(),
%%   <<"ResourceTypes">> => list([string()]()),
%%   <<"SinkArn">> => [string()],
%%   <<"Tags">> => map()
%% }
-type create_link_output() :: #{binary() => any()}.


%% Example:
%% link_configuration() :: #{
%%   <<"LogGroupConfiguration">> => log_group_configuration(),
%%   <<"MetricConfiguration">> => metric_configuration()
%% }
-type link_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% list_links_item() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => [string()],
%%   <<"Label">> => [string()],
%%   <<"ResourceTypes">> => list([string()]()),
%%   <<"SinkArn">> => [string()]
%% }
-type list_links_item() :: #{binary() => any()}.


%% Example:
%% list_sinks_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_sinks_input() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"amznErrorType">> => [string()],
%%   <<"message">> => [string()]
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% list_sinks_output() :: #{
%%   <<"Items">> => list(list_sinks_item()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_sinks_output() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% get_link_input() :: #{
%%   <<"Identifier">> := string(),
%%   <<"IncludeTags">> => boolean()
%% }
-type get_link_input() :: #{binary() => any()}.

%% Example:
%% delete_link_output() :: #{}
-type delete_link_output() :: #{}.


%% Example:
%% internal_service_fault() :: #{
%%   <<"Message">> => [string()],
%%   <<"amznErrorType">> => [string()]
%% }
-type internal_service_fault() :: #{binary() => any()}.


%% Example:
%% list_sinks_item() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type list_sinks_item() :: #{binary() => any()}.


%% Example:
%% get_sink_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"Tags">> => map()
%% }
-type get_sink_output() :: #{binary() => any()}.


%% Example:
%% update_link_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => [string()],
%%   <<"Label">> => [string()],
%%   <<"LabelTemplate">> => string(),
%%   <<"LinkConfiguration">> => link_configuration(),
%%   <<"ResourceTypes">> => list([string()]()),
%%   <<"SinkArn">> => [string()],
%%   <<"Tags">> => map()
%% }
-type update_link_output() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% put_sink_policy_input() :: #{
%%   <<"Policy">> := string(),
%%   <<"SinkIdentifier">> := string()
%% }
-type put_sink_policy_input() :: #{binary() => any()}.

-type create_link_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    missing_required_parameter_exception().

-type create_sink_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    missing_required_parameter_exception().

-type delete_link_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    missing_required_parameter_exception().

-type delete_sink_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    missing_required_parameter_exception().

-type get_link_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    missing_required_parameter_exception().

-type get_sink_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    missing_required_parameter_exception().

-type get_sink_policy_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    missing_required_parameter_exception().

-type list_attached_links_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    missing_required_parameter_exception().

-type list_links_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type list_sinks_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type put_sink_policy_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    missing_required_parameter_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_link_errors() ::
    internal_service_fault() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    missing_required_parameter_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a link between a source account and a sink that you have
%% created in a monitoring account.
%%
%% After the link is created, data is sent from the source account to the
%% monitoring account. When you create a link, you can optionally specify
%% filters that specify which metric namespaces and which log groups are
%% shared from the source account to the monitoring account.
%%
%% Before you create a link, you must create a sink in the monitoring account
%% and create a sink policy in that account. The sink policy must permit the
%% source account to link to it. You can grant permission to source accounts
%% by granting permission to an entire organization or to individual
%% accounts.
%%
%% For more information, see CreateSink:
%% https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html
%% and PutSinkPolicy:
%% https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html.
%%
%% Each monitoring account can be linked to as many as 100,000 source
%% accounts.
%%
%% Each source account can be linked to as many as five monitoring accounts.
-spec create_link(aws_client:aws_client(), create_link_input()) ->
    {ok, create_link_output(), tuple()} |
    {error, any()} |
    {error, create_link_errors(), tuple()}.
create_link(Client, Input) ->
    create_link(Client, Input, []).

-spec create_link(aws_client:aws_client(), create_link_input(), proplists:proplist()) ->
    {ok, create_link_output(), tuple()} |
    {error, any()} |
    {error, create_link_errors(), tuple()}.
create_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLink"],
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

%% @doc Use this to create a sink in the current account, so that it can be
%% used as a monitoring account in CloudWatch cross-account observability.
%%
%% A sink is a resource that represents an attachment point in a monitoring
%% account. Source accounts can link to the sink to send observability data.
%%
%% After you create a sink, you must create a sink policy that allows source
%% accounts to attach to it. For more information, see PutSinkPolicy:
%% https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html.
%%
%% Each account can contain one sink per Region. If you delete a sink, you
%% can then create a new one in that Region.
-spec create_sink(aws_client:aws_client(), create_sink_input()) ->
    {ok, create_sink_output(), tuple()} |
    {error, any()} |
    {error, create_sink_errors(), tuple()}.
create_sink(Client, Input) ->
    create_sink(Client, Input, []).

-spec create_sink(aws_client:aws_client(), create_sink_input(), proplists:proplist()) ->
    {ok, create_sink_output(), tuple()} |
    {error, any()} |
    {error, create_sink_errors(), tuple()}.
create_sink(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateSink"],
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

%% @doc Deletes a link between a monitoring account sink and a source
%% account.
%%
%% You must run this operation in the source account.
-spec delete_link(aws_client:aws_client(), delete_link_input()) ->
    {ok, delete_link_output(), tuple()} |
    {error, any()} |
    {error, delete_link_errors(), tuple()}.
delete_link(Client, Input) ->
    delete_link(Client, Input, []).

-spec delete_link(aws_client:aws_client(), delete_link_input(), proplists:proplist()) ->
    {ok, delete_link_output(), tuple()} |
    {error, any()} |
    {error, delete_link_errors(), tuple()}.
delete_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLink"],
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

%% @doc Deletes a sink.
%%
%% You must delete all links to a sink before you can delete that sink.
-spec delete_sink(aws_client:aws_client(), delete_sink_input()) ->
    {ok, delete_sink_output(), tuple()} |
    {error, any()} |
    {error, delete_sink_errors(), tuple()}.
delete_sink(Client, Input) ->
    delete_sink(Client, Input, []).

-spec delete_sink(aws_client:aws_client(), delete_sink_input(), proplists:proplist()) ->
    {ok, delete_sink_output(), tuple()} |
    {error, any()} |
    {error, delete_sink_errors(), tuple()}.
delete_sink(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteSink"],
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

%% @doc Returns complete information about one link.
%%
%% To use this operation, provide the link ARN. To retrieve a list of link
%% ARNs, use ListLinks:
%% https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html.
-spec get_link(aws_client:aws_client(), get_link_input()) ->
    {ok, get_link_output(), tuple()} |
    {error, any()} |
    {error, get_link_errors(), tuple()}.
get_link(Client, Input) ->
    get_link(Client, Input, []).

-spec get_link(aws_client:aws_client(), get_link_input(), proplists:proplist()) ->
    {ok, get_link_output(), tuple()} |
    {error, any()} |
    {error, get_link_errors(), tuple()}.
get_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLink"],
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

%% @doc Returns complete information about one monitoring account sink.
%%
%% To use this operation, provide the sink ARN. To retrieve a list of sink
%% ARNs, use ListSinks:
%% https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html.
-spec get_sink(aws_client:aws_client(), get_sink_input()) ->
    {ok, get_sink_output(), tuple()} |
    {error, any()} |
    {error, get_sink_errors(), tuple()}.
get_sink(Client, Input) ->
    get_sink(Client, Input, []).

-spec get_sink(aws_client:aws_client(), get_sink_input(), proplists:proplist()) ->
    {ok, get_sink_output(), tuple()} |
    {error, any()} |
    {error, get_sink_errors(), tuple()}.
get_sink(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetSink"],
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

%% @doc Returns the current sink policy attached to this sink.
%%
%% The sink policy specifies what accounts can attach to this sink as source
%% accounts, and what types of data they can share.
-spec get_sink_policy(aws_client:aws_client(), get_sink_policy_input()) ->
    {ok, get_sink_policy_output(), tuple()} |
    {error, any()} |
    {error, get_sink_policy_errors(), tuple()}.
get_sink_policy(Client, Input) ->
    get_sink_policy(Client, Input, []).

-spec get_sink_policy(aws_client:aws_client(), get_sink_policy_input(), proplists:proplist()) ->
    {ok, get_sink_policy_output(), tuple()} |
    {error, any()} |
    {error, get_sink_policy_errors(), tuple()}.
get_sink_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetSinkPolicy"],
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

%% @doc Returns a list of source account links that are linked to this
%% monitoring account sink.
%%
%% To use this operation, provide the sink ARN. To retrieve a list of sink
%% ARNs, use ListSinks:
%% https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html.
%%
%% To find a list of links for one source account, use ListLinks:
%% https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html.
-spec list_attached_links(aws_client:aws_client(), list_attached_links_input()) ->
    {ok, list_attached_links_output(), tuple()} |
    {error, any()} |
    {error, list_attached_links_errors(), tuple()}.
list_attached_links(Client, Input) ->
    list_attached_links(Client, Input, []).

-spec list_attached_links(aws_client:aws_client(), list_attached_links_input(), proplists:proplist()) ->
    {ok, list_attached_links_output(), tuple()} |
    {error, any()} |
    {error, list_attached_links_errors(), tuple()}.
list_attached_links(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListAttachedLinks"],
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

%% @doc Use this operation in a source account to return a list of links to
%% monitoring account sinks that this source account has.
%%
%% To find a list of links for one monitoring account sink, use
%% ListAttachedLinks:
%% https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListAttachedLinks.html
%% from within the monitoring account.
-spec list_links(aws_client:aws_client(), list_links_input()) ->
    {ok, list_links_output(), tuple()} |
    {error, any()} |
    {error, list_links_errors(), tuple()}.
list_links(Client, Input) ->
    list_links(Client, Input, []).

-spec list_links(aws_client:aws_client(), list_links_input(), proplists:proplist()) ->
    {ok, list_links_output(), tuple()} |
    {error, any()} |
    {error, list_links_errors(), tuple()}.
list_links(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListLinks"],
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

%% @doc Use this operation in a monitoring account to return the list of
%% sinks created in that account.
-spec list_sinks(aws_client:aws_client(), list_sinks_input()) ->
    {ok, list_sinks_output(), tuple()} |
    {error, any()} |
    {error, list_sinks_errors(), tuple()}.
list_sinks(Client, Input) ->
    list_sinks(Client, Input, []).

-spec list_sinks(aws_client:aws_client(), list_sinks_input(), proplists:proplist()) ->
    {ok, list_sinks_output(), tuple()} |
    {error, any()} |
    {error, list_sinks_errors(), tuple()}.
list_sinks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListSinks"],
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

%% @doc Displays the tags associated with a resource.
%%
%% Both sinks and links support tagging.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
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

%% @doc Creates or updates the resource policy that grants permissions to
%% source accounts to link to the monitoring account sink.
%%
%% When you create a sink policy, you can grant permissions to all accounts
%% in an organization or to individual accounts.
%%
%% You can also use a sink policy to limit the types of data that is shared.
%% The six types of services with their respective resource types that you
%% can allow or deny are:
%%
%% Metrics - Specify with `AWS::CloudWatch::Metric'
%%
%% Log groups - Specify with `AWS::Logs::LogGroup'
%%
%% Traces - Specify with `AWS::XRay::Trace'
%%
%% Application Insights - Applications - Specify with
%% `AWS::ApplicationInsights::Application'
%%
%% Internet Monitor - Specify with `AWS::InternetMonitor::Monitor'
%%
%% Application Signals - Specify with `AWS::ApplicationSignals::Service'
%% and `AWS::ApplicationSignals::ServiceLevelObjective'
%%
%% See the examples in this section to see how to specify permitted source
%% accounts and data types.
-spec put_sink_policy(aws_client:aws_client(), put_sink_policy_input()) ->
    {ok, put_sink_policy_output(), tuple()} |
    {error, any()} |
    {error, put_sink_policy_errors(), tuple()}.
put_sink_policy(Client, Input) ->
    put_sink_policy(Client, Input, []).

-spec put_sink_policy(aws_client:aws_client(), put_sink_policy_input(), proplists:proplist()) ->
    {ok, put_sink_policy_output(), tuple()} |
    {error, any()} |
    {error, put_sink_policy_errors(), tuple()}.
put_sink_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutSinkPolicy"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified resource.
%%
%% Both sinks and links can be tagged.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If you specify a new tag key for the alarm, this tag is appended to
%% the list of tags associated with the alarm. If you specify a tag key that
%% is already associated with the alarm, the new tag value that you specify
%% replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
%%
%% Unlike tagging permissions in other Amazon Web Services services, to tag
%% or untag links and sinks you must have the `oam:ResourceTag'
%% permission. The `iam:ResourceTag' permission does not allow you to tag
%% and untag links and sinks.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = put,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from the specified resource.
%%
%% Unlike tagging permissions in other Amazon Web Services services, to tag
%% or untag links and sinks you must have the `oam:ResourceTag'
%% permission. The `iam:TagResource' permission does not allow you to tag
%% and untag links and sinks.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use this operation to change what types of data are shared from a
%% source account to its linked monitoring account sink.
%%
%% You can't change the sink or change the monitoring account with this
%% operation.
%%
%% When you update a link, you can optionally specify filters that specify
%% which metric namespaces and which log groups are shared from the source
%% account to the monitoring account.
%%
%% To update the list of tags associated with the sink, use TagResource:
%% https://docs.aws.amazon.com/OAM/latest/APIReference/API_TagResource.html.
-spec update_link(aws_client:aws_client(), update_link_input()) ->
    {ok, update_link_output(), tuple()} |
    {error, any()} |
    {error, update_link_errors(), tuple()}.
update_link(Client, Input) ->
    update_link(Client, Input, []).

-spec update_link(aws_client:aws_client(), update_link_input(), proplists:proplist()) ->
    {ok, update_link_output(), tuple()} |
    {error, any()} |
    {error, update_link_errors(), tuple()}.
update_link(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLink"],
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
    Client1 = Client#{service => <<"oam">>},
    Host = build_host(<<"oam">>, Client1),
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
