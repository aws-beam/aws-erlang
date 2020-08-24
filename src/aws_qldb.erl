%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The control plane for Amazon QLDB
-module(aws_qldb).

-export([cancel_journal_kinesis_stream/4,
         cancel_journal_kinesis_stream/5,
         create_ledger/2,
         create_ledger/3,
         delete_ledger/3,
         delete_ledger/4,
         describe_journal_kinesis_stream/3,
         describe_journal_kinesis_stream/4,
         describe_journal_s3_export/3,
         describe_journal_s3_export/4,
         describe_ledger/2,
         describe_ledger/3,
         export_journal_to_s3/3,
         export_journal_to_s3/4,
         get_block/3,
         get_block/4,
         get_digest/3,
         get_digest/4,
         get_revision/3,
         get_revision/4,
         list_journal_kinesis_streams_for_ledger/4,
         list_journal_kinesis_streams_for_ledger/5,
         list_journal_s3_exports/3,
         list_journal_s3_exports/4,
         list_journal_s3_exports_for_ledger/4,
         list_journal_s3_exports_for_ledger/5,
         list_ledgers/3,
         list_ledgers/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         stream_journal_to_kinesis/3,
         stream_journal_to_kinesis/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_ledger/3,
         update_ledger/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Ends a given Amazon QLDB journal stream. Before a stream can be
%% canceled, its current status must be <code>ACTIVE</code>.
%%
%% You can't restart a stream after you cancel it. Canceled QLDB stream
%% resources are subject to a 7-day retention period, so they are
%% automatically deleted after this limit expires.
cancel_journal_kinesis_stream(Client, LedgerName, StreamId, Input) ->
    cancel_journal_kinesis_stream(Client, LedgerName, StreamId, Input, []).
cancel_journal_kinesis_stream(Client, LedgerName, StreamId, Input0, Options) ->
    Method = delete,
    Path = ["/ledgers/", http_uri:encode(LedgerName), "/journal-kinesis-streams/", http_uri:encode(StreamId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new ledger in your AWS account.
create_ledger(Client, Input) ->
    create_ledger(Client, Input, []).
create_ledger(Client, Input0, Options) ->
    Method = post,
    Path = ["/ledgers"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a ledger and all of its contents. This action is
%% irreversible.
%%
%% If deletion protection is enabled, you must first disable it before you
%% can delete the ledger using the QLDB API or the AWS Command Line Interface
%% (AWS CLI). You can disable it by calling the <code>UpdateLedger</code>
%% operation to set the flag to <code>false</code>. The QLDB console disables
%% deletion protection for you when you use it to delete a ledger.
delete_ledger(Client, Name, Input) ->
    delete_ledger(Client, Name, Input, []).
delete_ledger(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/ledgers/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns detailed information about a given Amazon QLDB journal
%% stream. The output includes the Amazon Resource Name (ARN), stream name,
%% current status, creation time, and the parameters of your original stream
%% creation request.
describe_journal_kinesis_stream(Client, LedgerName, StreamId)
  when is_map(Client) ->
    describe_journal_kinesis_stream(Client, LedgerName, StreamId, []).
describe_journal_kinesis_stream(Client, LedgerName, StreamId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/ledgers/", http_uri:encode(LedgerName), "/journal-kinesis-streams/", http_uri:encode(StreamId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a journal export job, including the ledger
%% name, export ID, when it was created, current status, and its start and
%% end time export parameters.
%%
%% This action does not return any expired export jobs. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export
%% Job Expiration</a> in the <i>Amazon QLDB Developer Guide</i>.
%%
%% If the export job with the given <code>ExportId</code> doesn't exist, then
%% throws <code>ResourceNotFoundException</code>.
%%
%% If the ledger with the given <code>Name</code> doesn't exist, then throws
%% <code>ResourceNotFoundException</code>.
describe_journal_s3_export(Client, ExportId, Name)
  when is_map(Client) ->
    describe_journal_s3_export(Client, ExportId, Name, []).
describe_journal_s3_export(Client, ExportId, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/ledgers/", http_uri:encode(Name), "/journal-s3-exports/", http_uri:encode(ExportId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a ledger, including its state and when it
%% was created.
describe_ledger(Client, Name)
  when is_map(Client) ->
    describe_ledger(Client, Name, []).
describe_ledger(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/ledgers/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports journal contents within a date and time range from a ledger
%% into a specified Amazon Simple Storage Service (Amazon S3) bucket. The
%% data is written as files in Amazon Ion format.
%%
%% If the ledger with the given <code>Name</code> doesn't exist, then throws
%% <code>ResourceNotFoundException</code>.
%%
%% If the ledger with the given <code>Name</code> is in <code>CREATING</code>
%% status, then throws <code>ResourcePreconditionNotMetException</code>.
%%
%% You can initiate up to two concurrent journal export requests for each
%% ledger. Beyond this limit, journal export requests throw
%% <code>LimitExceededException</code>.
export_journal_to_s3(Client, Name, Input) ->
    export_journal_to_s3(Client, Name, Input, []).
export_journal_to_s3(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/ledgers/", http_uri:encode(Name), "/journal-s3-exports"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a block object at a specified address in a journal. Also
%% returns a proof of the specified block for verification if
%% <code>DigestTipAddress</code> is provided.
%%
%% For information about the data contents in a block, see <a
%% href="https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html">Journal
%% contents</a> in the <i>Amazon QLDB Developer Guide</i>.
%%
%% If the specified ledger doesn't exist or is in <code>DELETING</code>
%% status, then throws <code>ResourceNotFoundException</code>.
%%
%% If the specified ledger is in <code>CREATING</code> status, then throws
%% <code>ResourcePreconditionNotMetException</code>.
%%
%% If no block exists with the specified address, then throws
%% <code>InvalidParameterException</code>.
get_block(Client, Name, Input) ->
    get_block(Client, Name, Input, []).
get_block(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/ledgers/", http_uri:encode(Name), "/block"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the digest of a ledger at the latest committed block in the
%% journal. The response includes a 256-bit hash value and a block address.
get_digest(Client, Name, Input) ->
    get_digest(Client, Name, Input, []).
get_digest(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/ledgers/", http_uri:encode(Name), "/digest"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a revision data object for a specified document ID and block
%% address. Also returns a proof of the specified revision for verification
%% if <code>DigestTipAddress</code> is provided.
get_revision(Client, Name, Input) ->
    get_revision(Client, Name, Input, []).
get_revision(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/ledgers/", http_uri:encode(Name), "/revision"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns an array of all Amazon QLDB journal stream descriptors for a
%% given ledger. The output of each stream descriptor includes the same
%% details that are returned by <code>DescribeJournalKinesisStream</code>.
%%
%% This action returns a maximum of <code>MaxResults</code> items. It is
%% paginated so that you can retrieve all the items by calling
%% <code>ListJournalKinesisStreamsForLedger</code> multiple times.
list_journal_kinesis_streams_for_ledger(Client, LedgerName, MaxResults, NextToken)
  when is_map(Client) ->
    list_journal_kinesis_streams_for_ledger(Client, LedgerName, MaxResults, NextToken, []).
list_journal_kinesis_streams_for_ledger(Client, LedgerName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/ledgers/", http_uri:encode(LedgerName), "/journal-kinesis-streams"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, MaxResults},
        {<<"next_token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array of journal export job descriptions for all ledgers
%% that are associated with the current AWS account and Region.
%%
%% This action returns a maximum of <code>MaxResults</code> items, and is
%% paginated so that you can retrieve all the items by calling
%% <code>ListJournalS3Exports</code> multiple times.
%%
%% This action does not return any expired export jobs. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export
%% Job Expiration</a> in the <i>Amazon QLDB Developer Guide</i>.
list_journal_s3_exports(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_journal_s3_exports(Client, MaxResults, NextToken, []).
list_journal_s3_exports(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/journal-s3-exports"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, MaxResults},
        {<<"next_token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array of journal export job descriptions for a specified
%% ledger.
%%
%% This action returns a maximum of <code>MaxResults</code> items, and is
%% paginated so that you can retrieve all the items by calling
%% <code>ListJournalS3ExportsForLedger</code> multiple times.
%%
%% This action does not return any expired export jobs. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration">Export
%% Job Expiration</a> in the <i>Amazon QLDB Developer Guide</i>.
list_journal_s3_exports_for_ledger(Client, Name, MaxResults, NextToken)
  when is_map(Client) ->
    list_journal_s3_exports_for_ledger(Client, Name, MaxResults, NextToken, []).
list_journal_s3_exports_for_ledger(Client, Name, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/ledgers/", http_uri:encode(Name), "/journal-s3-exports"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, MaxResults},
        {<<"next_token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array of ledger summaries that are associated with the
%% current AWS account and Region.
%%
%% This action returns a maximum of 100 items and is paginated so that you
%% can retrieve all the items by calling <code>ListLedgers</code> multiple
%% times.
list_ledgers(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_ledgers(Client, MaxResults, NextToken, []).
list_ledgers(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/ledgers"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, MaxResults},
        {<<"next_token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns all tags for a specified Amazon QLDB resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a journal stream for a given Amazon QLDB ledger. The stream
%% captures every document revision that is committed to the ledger's journal
%% and delivers the data to a specified Amazon Kinesis Data Streams resource.
stream_journal_to_kinesis(Client, LedgerName, Input) ->
    stream_journal_to_kinesis(Client, LedgerName, Input, []).
stream_journal_to_kinesis(Client, LedgerName, Input0, Options) ->
    Method = post,
    Path = ["/ledgers/", http_uri:encode(LedgerName), "/journal-kinesis-streams"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more tags to a specified Amazon QLDB resource.
%%
%% A resource can have up to 50 tags. If you try to create more than 50 tags
%% for a resource, your request fails and returns an error.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from a specified Amazon QLDB resource. You
%% can specify up to 50 tag keys to remove.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates properties on a ledger.
update_ledger(Client, Name, Input) ->
    update_ledger(Client, Name, Input, []).
update_ledger(Client, Name, Input0, Options) ->
    Method = patch,
    Path = ["/ledgers/", http_uri:encode(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"qldb">>},
    Host = build_host(<<"qldb">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
