%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc The AWS Application Discovery Service helps Systems Integrators
%% quickly and reliably plan application migration projects by automatically
%% identifying applications running in on-premises data centers, their
%% associated dependencies, and their performance profile.
%%
%% Planning data center migrations can involve thousands of workloads that
%% are often deeply interdependent. Application discovery and dependency
%% mapping are important early first steps in the migration process, but
%% difficult to perform at scale due to the lack of automated tools.
%%
%% The AWS Application Discovery Service automatically collects configuration
%% and usage data from servers to develop a list of applications, how they
%% perform, and how they are interdependent. This information is securely
%% retained in an AWS Application Discovery Service database which you can
%% export as a CSV file into your preferred visualization tool or cloud
%% migration solution to help reduce the complexity and time in planning your
%% cloud migration.
%%
%% The Application Discovery Service is currently available for preview. Only
%% customers who are engaged with <a
%% href="https://aws.amazon.com/professional-services/">AWS Professional
%% Services</a> or a certified AWS partner can use the service. To see the
%% list of certified partners and request access to the Application Discovery
%% Service, complete the following <a
%% href="http://aws.amazon.com/application-discovery/preview/">preview
%% form</a>.
%%
%% This API reference provides descriptions, syntax, and usage examples for
%% each of the actions and data types for the Discovery Service. The topic
%% for each action shows the API request parameters and the response.
%% Alternatively, you can use one of the AWS SDKs to access an API that is
%% tailored to the programming language or platform that you're using. For
%% more information, see <a href="http://aws.amazon.com/tools/#SDKs">AWS
%% SDKs</a>.
%%
%% This guide is intended for use with the <a
%% href="http://docs.aws.amazon.com/application-discovery/latest/userguide/what-is-appdiscovery.html">
%% <i>AWS Discovery Service User Guide</i> </a>.
%%
%% The following are short descriptions of each API action, organized by
%% function.
%%
%% <b>Managing AWS Agents Using the Application Discovery Service</b>
%%
%% An AWS agent is software that you install on on-premises servers and
%% virtual machines that are targeted for discovery and migration. Agents run
%% on Linux and Windows Server and collect server configuration and activity
%% information about your applications and infrastructure. Specifically,
%% agents collect the following information and send it to the Application
%% Discovery Service using Secure Sockets Layer (SSL) encryption:
%%
%% <ul> <li> User information (user name, home directory)
%%
%% </li> <li> Group information (name)
%%
%% </li> <li> List of installed packages
%%
%% </li> <li> List of kernel modules
%%
%% </li> <li> All create and stop process events
%%
%% </li> <li> DNS queries
%%
%% </li> <li> NIC information
%%
%% </li> <li> TCP/UDP process listening ports
%%
%% </li> <li> TCPV4/V6 connections
%%
%% </li> <li> Operating system information
%%
%% </li> <li> System performance
%%
%% </li> <li> Process performance
%%
%% </li> </ul> The Application Discovery Service API includes the following
%% actions to manage AWS agents:
%%
%% <ul> <li> <i>StartDataCollectionByAgentIds</i>: Instructs the specified
%% agents to start collecting data. The Application Discovery Service takes
%% several minutes to receive and process data after you initiate data
%% collection.
%%
%% </li> <li> <i>StopDataCollectionByAgentIds</i>: Instructs the specified
%% agents to stop collecting data.
%%
%% </li> <li> <i>DescribeAgents</i>: Lists AWS agents by ID or lists all
%% agents associated with your user account if you did not specify an agent
%% ID. The output includes agent IDs, IP addresses, media access control
%% (MAC) addresses, agent health, host name where the agent resides, and the
%% version number of each agent.
%%
%% </li> </ul> <b>Querying Configuration Items</b>
%%
%% A <i>configuration item</i> is an IT asset that was discovered in your
%% data center by an AWS agent. When you use the Application Discovery
%% Service, you can specify filters and query specific configuration items.
%% The service supports Server, Process, and Connection configuration items.
%% This means you can specify a value for the following keys and query your
%% IT assets:
%%
%% <p class="title"> <b>Server</b>
%%
%% <ul> <li> server.HostName
%%
%% </li> <li> server.osName
%%
%% </li> <li> server.osVersion
%%
%% </li> <li> server.configurationId
%%
%% </li> <li> server.agentId
%%
%% </li> </ul> <p class="title"> <b>Process</b>
%%
%% <ul> <li> process.name
%%
%% </li> <li> process.CommandLine
%%
%% </li> <li> process.configurationId
%%
%% </li> <li> server.hostName
%%
%% </li> <li> server.osName
%%
%% </li> <li> server.osVersion
%%
%% </li> <li> server.configurationId
%%
%% </li> <li> server.agentId
%%
%% </li> </ul> <p class="title"> <b>Connection</b>
%%
%% <ul> <li> connection.sourceIp
%%
%% </li> <li> connection.sourcePort
%%
%% </li> <li> connection.destinationIp
%%
%% </li> <li> connection.destinationPort
%%
%% </li> <li> sourceProcess.configurationId
%%
%% </li> <li> sourceProcess.commandLine
%%
%% </li> <li> sourceProcess.name
%%
%% </li> <li> destinationProcessId.configurationId
%%
%% </li> <li> destinationProcess.commandLine
%%
%% </li> <li> destinationProcess.name
%%
%% </li> <li> sourceServer.configurationId
%%
%% </li> <li> sourceServer.hostName
%%
%% </li> <li> sourceServer.osName
%%
%% </li> <li> sourceServer.osVersion
%%
%% </li> <li> destinationServer.configurationId
%%
%% </li> <li> destinationServer.hostName
%%
%% </li> <li> destinationServer.osName
%%
%% </li> <li> destinationServer.osVersion
%%
%% </li> </ul> The Application Discovery Service includes the following
%% actions for querying configuration items.
%%
%% <ul> <li> <i>DescribeConfigurations</i>: Retrieves a list of attributes
%% for a specific configuration ID. For example, the output for a
%% <i>server</i> configuration item includes a list of attributes about the
%% server, including host name, operating system, number of network cards,
%% etc.
%%
%% </li> <li> <i>ListConfigurations</i>: Retrieves a list of configuration
%% items according to the criteria you specify in a filter. The filter
%% criteria identify relationship requirements. For example, you can specify
%% filter criteria of process.name with values of <i>nginx</i> and
%% <i>apache</i>.
%%
%% </li> </ul> <b>Tagging Discovered Configuration Items</b>
%%
%% You can tag discovered configuration items. Tags are metadata that help
%% you categorize IT assets in your data center. Tags use a
%% <i>key</i>-<i>value</i> format. For example, <code>{"key": "serverType",
%% "value": "webServer"}</code>.
%%
%% <ul> <li> <i>CreateTags</i>: Creates one or more tags for a configuration
%% items.
%%
%% </li> <li> <i>DescribeTags</i>: Retrieves a list of configuration items
%% that are tagged with a specific tag. <i>Or</i>, retrieves a list of all
%% tags assigned to a specific configuration item.
%%
%% </li> <li> <i>DeleteTags</i>: Deletes the association between a
%% configuration item and one or more tags.
%%
%% </li> </ul> <b>Exporting Data</b>
%%
%% You can export data as a CSV file to an Amazon S3 bucket or into your
%% preferred visualization tool or cloud migration solution to help reduce
%% the complexity and time in planning your cloud migration.
%%
%% <ul> <li> <i>ExportConfigurations</i>: Exports all discovered
%% configuration data to an Amazon S3 bucket. Data includes tags and tag
%% associations, processes, connections, servers, and system performance.
%% This API returns an export ID which you can query using the
%% GetExportStatus API.
%%
%% </li> <li> <i>DescribeExportConfigurations</i>: Gets the status of the
%% data export. When the export is complete, the service returns an Amazon S3
%% URL where you can download CSV files that include the data.
%%
%% </li> </ul>
-module(aws_discovery).

-export([create_tags/2,
         create_tags/3,
         delete_tags/2,
         delete_tags/3,
         describe_agents/2,
         describe_agents/3,
         describe_configurations/2,
         describe_configurations/3,
         describe_export_configurations/2,
         describe_export_configurations/3,
         describe_tags/2,
         describe_tags/3,
         export_configurations/2,
         export_configurations/3,
         list_configurations/2,
         list_configurations/3,
         start_data_collection_by_agent_ids/2,
         start_data_collection_by_agent_ids/3,
         stop_data_collection_by_agent_ids/2,
         stop_data_collection_by_agent_ids/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates one or more tags for configuration items. Tags are metadata
%% that help you categorize IT assets. This API accepts a list of multiple
%% configuration items.
create_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tags(Client, Input, []).
create_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTags">>, Input, Options).

%% @doc Deletes the association between configuration items and one or more
%% tags. This API accepts a list of multiple configuration items.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Lists AWS agents by ID or lists all agents associated with your user
%% account if you did not specify an agent ID.
describe_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agents(Client, Input, []).
describe_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgents">>, Input, Options).

%% @doc Retrieves a list of attributes for a specific configuration ID. For
%% example, the output for a <i>server</i> configuration item includes a list
%% of attributes about the server, including host name, operating system,
%% number of network cards, etc.
describe_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configurations(Client, Input, []).
describe_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurations">>, Input, Options).

%% @doc Retrieves the status of a given export process. You can retrieve
%% status from a maximum of 100 processes.
describe_export_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_configurations(Client, Input, []).
describe_export_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportConfigurations">>, Input, Options).

%% @doc Retrieves a list of configuration items that are tagged with a
%% specific tag. Or retrieves a list of all tags assigned to a specific
%% configuration item.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Exports all discovered configuration data to an Amazon S3 bucket or
%% an application that enables you to view and evaluate the data. Data
%% includes tags and tag associations, processes, connections, servers, and
%% system performance. This API returns an export ID which you can query
%% using the <i>GetExportStatus</i> API. The system imposes a limit of two
%% configuration exports in six hours.
export_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_configurations(Client, Input, []).
export_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportConfigurations">>, Input, Options).

%% @doc Retrieves a list of configurations items according to the criteria
%% you specify in a filter. The filter criteria identify relationship
%% requirements.
list_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_configurations(Client, Input, []).
list_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConfigurations">>, Input, Options).

%% @doc Instructs the specified agents to start collecting data. Agents can
%% reside on host servers or virtual machines in your data center.
start_data_collection_by_agent_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_collection_by_agent_ids(Client, Input, []).
start_data_collection_by_agent_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataCollectionByAgentIds">>, Input, Options).

%% @doc Instructs the specified agents to stop collecting data.
stop_data_collection_by_agent_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_data_collection_by_agent_ids(Client, Input, []).
stop_data_collection_by_agent_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDataCollectionByAgentIds">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"discovery">>},
    Host = get_host(<<"discovery">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWSPoseidonService_V2015_11_01.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
