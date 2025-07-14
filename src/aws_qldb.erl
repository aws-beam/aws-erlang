%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The resource management API for Amazon QLDB
-module(aws_qldb).

-export([cancel_journal_kinesis_stream/4,
         cancel_journal_kinesis_stream/5,
         create_ledger/2,
         create_ledger/3,
         delete_ledger/3,
         delete_ledger/4,
         describe_journal_kinesis_stream/3,
         describe_journal_kinesis_stream/5,
         describe_journal_kinesis_stream/6,
         describe_journal_s3_export/3,
         describe_journal_s3_export/5,
         describe_journal_s3_export/6,
         describe_ledger/2,
         describe_ledger/4,
         describe_ledger/5,
         export_journal_to_s3/3,
         export_journal_to_s3/4,
         get_block/3,
         get_block/4,
         get_digest/3,
         get_digest/4,
         get_revision/3,
         get_revision/4,
         list_journal_kinesis_streams_for_ledger/2,
         list_journal_kinesis_streams_for_ledger/4,
         list_journal_kinesis_streams_for_ledger/5,
         list_journal_s3_exports/1,
         list_journal_s3_exports/3,
         list_journal_s3_exports/4,
         list_journal_s3_exports_for_ledger/2,
         list_journal_s3_exports_for_ledger/4,
         list_journal_s3_exports_for_ledger/5,
         list_ledgers/1,
         list_ledgers/3,
         list_ledgers/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         stream_journal_to_kinesis/3,
         stream_journal_to_kinesis/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_ledger/3,
         update_ledger/4,
         update_ledger_permissions_mode/3,
         update_ledger_permissions_mode/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_revision_response() :: #{
%%   <<"Proof">> => value_holder(),
%%   <<"Revision">> => value_holder()
%% }
-type get_revision_response() :: #{binary() => any()}.


%% Example:
%% list_journal_s3_exports_for_ledger_response() :: #{
%%   <<"JournalS3Exports">> => list(journal_s3_export_description()),
%%   <<"NextToken">> => string()
%% }
-type list_journal_s3_exports_for_ledger_response() :: #{binary() => any()}.


%% Example:
%% export_journal_to_s3_request() :: #{
%%   <<"ExclusiveEndTime">> := non_neg_integer(),
%%   <<"InclusiveStartTime">> := non_neg_integer(),
%%   <<"OutputFormat">> => list(any()),
%%   <<"RoleArn">> := string(),
%%   <<"S3ExportConfiguration">> := s3_export_configuration()
%% }
-type export_journal_to_s3_request() :: #{binary() => any()}.

%% Example:
%% cancel_journal_kinesis_stream_request() :: #{}
-type cancel_journal_kinesis_stream_request() :: #{}.


%% Example:
%% list_journal_kinesis_streams_for_ledger_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_journal_kinesis_streams_for_ledger_request() :: #{binary() => any()}.


%% Example:
%% resource_precondition_not_met_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_precondition_not_met_exception() :: #{binary() => any()}.


%% Example:
%% describe_ledger_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"EncryptionDescription">> => ledger_encryption_description(),
%%   <<"Name">> => string(),
%%   <<"PermissionsMode">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type describe_ledger_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% journal_kinesis_stream_description() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ErrorCause">> => list(any()),
%%   <<"ExclusiveEndTime">> => non_neg_integer(),
%%   <<"InclusiveStartTime">> => non_neg_integer(),
%%   <<"KinesisConfiguration">> => kinesis_configuration(),
%%   <<"LedgerName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StreamId">> => string(),
%%   <<"StreamName">> => string()
%% }
-type journal_kinesis_stream_description() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% get_revision_request() :: #{
%%   <<"BlockAddress">> := value_holder(),
%%   <<"DigestTipAddress">> => value_holder(),
%%   <<"DocumentId">> := string()
%% }
-type get_revision_request() :: #{binary() => any()}.


%% Example:
%% get_block_request() :: #{
%%   <<"BlockAddress">> := value_holder(),
%%   <<"DigestTipAddress">> => value_holder()
%% }
-type get_block_request() :: #{binary() => any()}.


%% Example:
%% s3_encryption_configuration() :: #{
%%   <<"KmsKeyArn">> => string(),
%%   <<"ObjectEncryptionType">> => list(any())
%% }
-type s3_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% ledger_summary() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type ledger_summary() :: #{binary() => any()}.


%% Example:
%% list_ledgers_response() :: #{
%%   <<"Ledgers">> => list(ledger_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_ledgers_response() :: #{binary() => any()}.

%% Example:
%% get_digest_request() :: #{}
-type get_digest_request() :: #{}.


%% Example:
%% update_ledger_request() :: #{
%%   <<"DeletionProtection">> => boolean(),
%%   <<"KmsKey">> => string()
%% }
-type update_ledger_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% journal_s3_export_description() :: #{
%%   <<"ExclusiveEndTime">> => non_neg_integer(),
%%   <<"ExportCreationTime">> => non_neg_integer(),
%%   <<"ExportId">> => string(),
%%   <<"InclusiveStartTime">> => non_neg_integer(),
%%   <<"LedgerName">> => string(),
%%   <<"OutputFormat">> => list(any()),
%%   <<"RoleArn">> => string(),
%%   <<"S3ExportConfiguration">> => s3_export_configuration(),
%%   <<"Status">> => list(any())
%% }
-type journal_s3_export_description() :: #{binary() => any()}.


%% Example:
%% create_ledger_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"PermissionsMode">> => list(any()),
%%   <<"State">> => list(any())
%% }
-type create_ledger_response() :: #{binary() => any()}.


%% Example:
%% list_journal_kinesis_streams_for_ledger_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Streams">> => list(journal_kinesis_stream_description())
%% }
-type list_journal_kinesis_streams_for_ledger_response() :: #{binary() => any()}.


%% Example:
%% get_digest_response() :: #{
%%   <<"Digest">> => binary(),
%%   <<"DigestTipAddress">> => value_holder()
%% }
-type get_digest_response() :: #{binary() => any()}.


%% Example:
%% stream_journal_to_kinesis_request() :: #{
%%   <<"ExclusiveEndTime">> => non_neg_integer(),
%%   <<"InclusiveStartTime">> := non_neg_integer(),
%%   <<"KinesisConfiguration">> := kinesis_configuration(),
%%   <<"RoleArn">> := string(),
%%   <<"StreamName">> := string(),
%%   <<"Tags">> => map()
%% }
-type stream_journal_to_kinesis_request() :: #{binary() => any()}.

%% Example:
%% delete_ledger_request() :: #{}
-type delete_ledger_request() :: #{}.


%% Example:
%% s3_export_configuration() :: #{
%%   <<"Bucket">> => string(),
%%   <<"EncryptionConfiguration">> => s3_encryption_configuration(),
%%   <<"Prefix">> => string()
%% }
-type s3_export_configuration() :: #{binary() => any()}.


%% Example:
%% cancel_journal_kinesis_stream_response() :: #{
%%   <<"StreamId">> => string()
%% }
-type cancel_journal_kinesis_stream_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_ledger_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"DeletionProtection">> => boolean(),
%%   <<"EncryptionDescription">> => ledger_encryption_description(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type update_ledger_response() :: #{binary() => any()}.


%% Example:
%% kinesis_configuration() :: #{
%%   <<"AggregationEnabled">> => boolean(),
%%   <<"StreamArn">> => string()
%% }
-type kinesis_configuration() :: #{binary() => any()}.


%% Example:
%% update_ledger_permissions_mode_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string(),
%%   <<"PermissionsMode">> => list(any())
%% }
-type update_ledger_permissions_mode_response() :: #{binary() => any()}.


%% Example:
%% list_journal_s3_exports_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_journal_s3_exports_request() :: #{binary() => any()}.


%% Example:
%% describe_journal_s3_export_response() :: #{
%%   <<"ExportDescription">> => journal_s3_export_description()
%% }
-type describe_journal_s3_export_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_block_response() :: #{
%%   <<"Block">> => value_holder(),
%%   <<"Proof">> => value_holder()
%% }
-type get_block_response() :: #{binary() => any()}.


%% Example:
%% list_journal_s3_exports_for_ledger_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_journal_s3_exports_for_ledger_request() :: #{binary() => any()}.


%% Example:
%% list_journal_s3_exports_response() :: #{
%%   <<"JournalS3Exports">> => list(journal_s3_export_description()),
%%   <<"NextToken">> => string()
%% }
-type list_journal_s3_exports_response() :: #{binary() => any()}.


%% Example:
%% value_holder() :: #{
%%   <<"IonText">> => string()
%% }
-type value_holder() :: #{binary() => any()}.


%% Example:
%% stream_journal_to_kinesis_response() :: #{
%%   <<"StreamId">> => string()
%% }
-type stream_journal_to_kinesis_response() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ParameterName">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% create_ledger_request() :: #{
%%   <<"DeletionProtection">> => boolean(),
%%   <<"KmsKey">> => string(),
%%   <<"Name">> := string(),
%%   <<"PermissionsMode">> := list(any()),
%%   <<"Tags">> => map()
%% }
-type create_ledger_request() :: #{binary() => any()}.


%% Example:
%% export_journal_to_s3_response() :: #{
%%   <<"ExportId">> => string()
%% }
-type export_journal_to_s3_response() :: #{binary() => any()}.


%% Example:
%% describe_journal_kinesis_stream_response() :: #{
%%   <<"Stream">> => journal_kinesis_stream_description()
%% }
-type describe_journal_kinesis_stream_response() :: #{binary() => any()}.

%% Example:
%% describe_ledger_request() :: #{}
-type describe_ledger_request() :: #{}.

%% Example:
%% describe_journal_s3_export_request() :: #{}
-type describe_journal_s3_export_request() :: #{}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_ledger_permissions_mode_request() :: #{
%%   <<"PermissionsMode">> := list(any())
%% }
-type update_ledger_permissions_mode_request() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% ledger_encryption_description() :: #{
%%   <<"EncryptionStatus">> => list(any()),
%%   <<"InaccessibleKmsKeyDateTime">> => non_neg_integer(),
%%   <<"KmsKeyArn">> => string()
%% }
-type ledger_encryption_description() :: #{binary() => any()}.

%% Example:
%% describe_journal_kinesis_stream_request() :: #{}
-type describe_journal_kinesis_stream_request() :: #{}.


%% Example:
%% list_ledgers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ledgers_request() :: #{binary() => any()}.

-type cancel_journal_kinesis_stream_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    resource_precondition_not_met_exception().

-type create_ledger_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    resource_in_use_exception().

-type delete_ledger_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    resource_precondition_not_met_exception().

-type describe_journal_kinesis_stream_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    resource_precondition_not_met_exception().

-type describe_journal_s3_export_errors() ::
    resource_not_found_exception().

-type describe_ledger_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type export_journal_to_s3_errors() ::
    resource_not_found_exception() | 
    resource_precondition_not_met_exception().

-type get_block_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    resource_precondition_not_met_exception().

-type get_digest_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    resource_precondition_not_met_exception().

-type get_revision_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    resource_precondition_not_met_exception().

-type list_journal_kinesis_streams_for_ledger_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    resource_precondition_not_met_exception().

-type list_tags_for_resource_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type stream_journal_to_kinesis_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    resource_precondition_not_met_exception().

-type tag_resource_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type update_ledger_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type update_ledger_permissions_mode_errors() ::
    invalid_parameter_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Ends a given Amazon QLDB journal stream.
%%
%% Before a stream can be canceled, its current
%% status must be `ACTIVE'.
%%
%% You can't restart a stream after you cancel it. Canceled QLDB stream
%% resources are
%% subject to a 7-day retention period, so they are automatically deleted
%% after this limit
%% expires.
-spec cancel_journal_kinesis_stream(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_journal_kinesis_stream_request()) ->
    {ok, cancel_journal_kinesis_stream_response(), tuple()} |
    {error, any()} |
    {error, cancel_journal_kinesis_stream_errors(), tuple()}.
cancel_journal_kinesis_stream(Client, LedgerName, StreamId, Input) ->
    cancel_journal_kinesis_stream(Client, LedgerName, StreamId, Input, []).

-spec cancel_journal_kinesis_stream(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_journal_kinesis_stream_request(), proplists:proplist()) ->
    {ok, cancel_journal_kinesis_stream_response(), tuple()} |
    {error, any()} |
    {error, cancel_journal_kinesis_stream_errors(), tuple()}.
cancel_journal_kinesis_stream(Client, LedgerName, StreamId, Input0, Options0) ->
    Method = delete,
    Path = ["/ledgers/", aws_util:encode_uri(LedgerName), "/journal-kinesis-streams/", aws_util:encode_uri(StreamId), ""],
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

%% @doc Creates a new ledger in your Amazon Web Services account in the
%% current Region.
-spec create_ledger(aws_client:aws_client(), create_ledger_request()) ->
    {ok, create_ledger_response(), tuple()} |
    {error, any()} |
    {error, create_ledger_errors(), tuple()}.
create_ledger(Client, Input) ->
    create_ledger(Client, Input, []).

-spec create_ledger(aws_client:aws_client(), create_ledger_request(), proplists:proplist()) ->
    {ok, create_ledger_response(), tuple()} |
    {error, any()} |
    {error, create_ledger_errors(), tuple()}.
create_ledger(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ledgers"],
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

%% @doc Deletes a ledger and all of its contents.
%%
%% This action is irreversible.
%%
%% If deletion protection is enabled, you must first disable it before you
%% can delete the
%% ledger. You can disable it by calling the `UpdateLedger' operation to
%% set this parameter to `false'.
-spec delete_ledger(aws_client:aws_client(), binary() | list(), delete_ledger_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ledger_errors(), tuple()}.
delete_ledger(Client, Name, Input) ->
    delete_ledger(Client, Name, Input, []).

-spec delete_ledger(aws_client:aws_client(), binary() | list(), delete_ledger_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_ledger_errors(), tuple()}.
delete_ledger(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/ledgers/", aws_util:encode_uri(Name), ""],
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

%% @doc Returns detailed information about a given Amazon QLDB journal
%% stream.
%%
%% The output
%% includes the Amazon Resource Name (ARN), stream name, current status,
%% creation time, and
%% the parameters of the original stream creation request.
%%
%% This action does not return any expired journal streams. For more
%% information, see
%% Expiration for terminal streams:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration
%% in the Amazon QLDB Developer
%% Guide.
-spec describe_journal_kinesis_stream(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_journal_kinesis_stream_response(), tuple()} |
    {error, any()} |
    {error, describe_journal_kinesis_stream_errors(), tuple()}.
describe_journal_kinesis_stream(Client, LedgerName, StreamId)
  when is_map(Client) ->
    describe_journal_kinesis_stream(Client, LedgerName, StreamId, #{}, #{}).

-spec describe_journal_kinesis_stream(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_journal_kinesis_stream_response(), tuple()} |
    {error, any()} |
    {error, describe_journal_kinesis_stream_errors(), tuple()}.
describe_journal_kinesis_stream(Client, LedgerName, StreamId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_journal_kinesis_stream(Client, LedgerName, StreamId, QueryMap, HeadersMap, []).

-spec describe_journal_kinesis_stream(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_journal_kinesis_stream_response(), tuple()} |
    {error, any()} |
    {error, describe_journal_kinesis_stream_errors(), tuple()}.
describe_journal_kinesis_stream(Client, LedgerName, StreamId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ledgers/", aws_util:encode_uri(LedgerName), "/journal-kinesis-streams/", aws_util:encode_uri(StreamId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a journal export job, including the ledger
%% name, export ID,
%% creation time, current status, and the parameters of the original export
%% creation
%% request.
%%
%% This action does not return any expired export jobs. For more information,
%% see Export job expiration:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration
%% in the Amazon QLDB Developer
%% Guide.
%%
%% If the export job with the given `ExportId' doesn't exist, then
%% throws
%% `ResourceNotFoundException'.
%%
%% If the ledger with the given `Name' doesn't exist, then throws
%% `ResourceNotFoundException'.
-spec describe_journal_s3_export(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_journal_s3_export_response(), tuple()} |
    {error, any()} |
    {error, describe_journal_s3_export_errors(), tuple()}.
describe_journal_s3_export(Client, ExportId, Name)
  when is_map(Client) ->
    describe_journal_s3_export(Client, ExportId, Name, #{}, #{}).

-spec describe_journal_s3_export(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_journal_s3_export_response(), tuple()} |
    {error, any()} |
    {error, describe_journal_s3_export_errors(), tuple()}.
describe_journal_s3_export(Client, ExportId, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_journal_s3_export(Client, ExportId, Name, QueryMap, HeadersMap, []).

-spec describe_journal_s3_export(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_journal_s3_export_response(), tuple()} |
    {error, any()} |
    {error, describe_journal_s3_export_errors(), tuple()}.
describe_journal_s3_export(Client, ExportId, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ledgers/", aws_util:encode_uri(Name), "/journal-s3-exports/", aws_util:encode_uri(ExportId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a ledger, including its state, permissions
%% mode, encryption at
%% rest settings, and when it was created.
-spec describe_ledger(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_ledger_response(), tuple()} |
    {error, any()} |
    {error, describe_ledger_errors(), tuple()}.
describe_ledger(Client, Name)
  when is_map(Client) ->
    describe_ledger(Client, Name, #{}, #{}).

-spec describe_ledger(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_ledger_response(), tuple()} |
    {error, any()} |
    {error, describe_ledger_errors(), tuple()}.
describe_ledger(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_ledger(Client, Name, QueryMap, HeadersMap, []).

-spec describe_ledger(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_ledger_response(), tuple()} |
    {error, any()} |
    {error, describe_ledger_errors(), tuple()}.
describe_ledger(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ledgers/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Exports journal contents within a date and time range from a ledger
%% into a specified
%% Amazon Simple Storage Service (Amazon S3) bucket.
%%
%% A journal export job can write the data objects in either the text
%% or binary representation of Amazon Ion format, or in JSON Lines text
%% format.
%%
%% If the ledger with the given `Name' doesn't exist, then throws
%% `ResourceNotFoundException'.
%%
%% If the ledger with the given `Name' is in `CREATING' status, then
%% throws `ResourcePreconditionNotMetException'.
%%
%% You can initiate up to two concurrent journal export requests for each
%% ledger. Beyond
%% this limit, journal export requests throw `LimitExceededException'.
-spec export_journal_to_s3(aws_client:aws_client(), binary() | list(), export_journal_to_s3_request()) ->
    {ok, export_journal_to_s3_response(), tuple()} |
    {error, any()} |
    {error, export_journal_to_s3_errors(), tuple()}.
export_journal_to_s3(Client, Name, Input) ->
    export_journal_to_s3(Client, Name, Input, []).

-spec export_journal_to_s3(aws_client:aws_client(), binary() | list(), export_journal_to_s3_request(), proplists:proplist()) ->
    {ok, export_journal_to_s3_response(), tuple()} |
    {error, any()} |
    {error, export_journal_to_s3_errors(), tuple()}.
export_journal_to_s3(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/ledgers/", aws_util:encode_uri(Name), "/journal-s3-exports"],
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

%% @doc Returns a block object at a specified address in a journal.
%%
%% Also returns a proof of the
%% specified block for verification if `DigestTipAddress' is provided.
%%
%% For information about the data contents in a block, see Journal contents:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html
%% in the
%% Amazon QLDB Developer Guide.
%%
%% If the specified ledger doesn't exist or is in `DELETING' status,
%% then throws
%% `ResourceNotFoundException'.
%%
%% If the specified ledger is in `CREATING' status, then throws
%% `ResourcePreconditionNotMetException'.
%%
%% If no block exists with the specified address, then throws
%% `InvalidParameterException'.
-spec get_block(aws_client:aws_client(), binary() | list(), get_block_request()) ->
    {ok, get_block_response(), tuple()} |
    {error, any()} |
    {error, get_block_errors(), tuple()}.
get_block(Client, Name, Input) ->
    get_block(Client, Name, Input, []).

-spec get_block(aws_client:aws_client(), binary() | list(), get_block_request(), proplists:proplist()) ->
    {ok, get_block_response(), tuple()} |
    {error, any()} |
    {error, get_block_errors(), tuple()}.
get_block(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/ledgers/", aws_util:encode_uri(Name), "/block"],
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

%% @doc Returns the digest of a ledger at the latest committed block in the
%% journal.
%%
%% The
%% response includes a 256-bit hash value and a block address.
-spec get_digest(aws_client:aws_client(), binary() | list(), get_digest_request()) ->
    {ok, get_digest_response(), tuple()} |
    {error, any()} |
    {error, get_digest_errors(), tuple()}.
get_digest(Client, Name, Input) ->
    get_digest(Client, Name, Input, []).

-spec get_digest(aws_client:aws_client(), binary() | list(), get_digest_request(), proplists:proplist()) ->
    {ok, get_digest_response(), tuple()} |
    {error, any()} |
    {error, get_digest_errors(), tuple()}.
get_digest(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/ledgers/", aws_util:encode_uri(Name), "/digest"],
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

%% @doc Returns a revision data object for a specified document ID and block
%% address.
%%
%% Also
%% returns a proof of the specified revision for verification if
%% `DigestTipAddress'
%% is provided.
-spec get_revision(aws_client:aws_client(), binary() | list(), get_revision_request()) ->
    {ok, get_revision_response(), tuple()} |
    {error, any()} |
    {error, get_revision_errors(), tuple()}.
get_revision(Client, Name, Input) ->
    get_revision(Client, Name, Input, []).

-spec get_revision(aws_client:aws_client(), binary() | list(), get_revision_request(), proplists:proplist()) ->
    {ok, get_revision_response(), tuple()} |
    {error, any()} |
    {error, get_revision_errors(), tuple()}.
get_revision(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/ledgers/", aws_util:encode_uri(Name), "/revision"],
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

%% @doc Returns all Amazon QLDB journal streams for a given ledger.
%%
%% This action does not return any expired journal streams. For more
%% information, see
%% Expiration for terminal streams:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration
%% in the Amazon QLDB Developer
%% Guide.
%%
%% This action returns a maximum of `MaxResults' items. It is paginated
%% so that
%% you can retrieve all the items by calling
%% `ListJournalKinesisStreamsForLedger'
%% multiple times.
-spec list_journal_kinesis_streams_for_ledger(aws_client:aws_client(), binary() | list()) ->
    {ok, list_journal_kinesis_streams_for_ledger_response(), tuple()} |
    {error, any()} |
    {error, list_journal_kinesis_streams_for_ledger_errors(), tuple()}.
list_journal_kinesis_streams_for_ledger(Client, LedgerName)
  when is_map(Client) ->
    list_journal_kinesis_streams_for_ledger(Client, LedgerName, #{}, #{}).

-spec list_journal_kinesis_streams_for_ledger(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_journal_kinesis_streams_for_ledger_response(), tuple()} |
    {error, any()} |
    {error, list_journal_kinesis_streams_for_ledger_errors(), tuple()}.
list_journal_kinesis_streams_for_ledger(Client, LedgerName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_journal_kinesis_streams_for_ledger(Client, LedgerName, QueryMap, HeadersMap, []).

-spec list_journal_kinesis_streams_for_ledger(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_journal_kinesis_streams_for_ledger_response(), tuple()} |
    {error, any()} |
    {error, list_journal_kinesis_streams_for_ledger_errors(), tuple()}.
list_journal_kinesis_streams_for_ledger(Client, LedgerName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ledgers/", aws_util:encode_uri(LedgerName), "/journal-kinesis-streams"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns all journal export jobs for all ledgers that are associated
%% with the current
%% Amazon Web Services account and Region.
%%
%% This action returns a maximum of `MaxResults' items, and is paginated
%% so that
%% you can retrieve all the items by calling `ListJournalS3Exports'
%% multiple
%% times.
%%
%% This action does not return any expired export jobs. For more information,
%% see Export job expiration:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration
%% in the Amazon QLDB Developer
%% Guide.
-spec list_journal_s3_exports(aws_client:aws_client()) ->
    {ok, list_journal_s3_exports_response(), tuple()} |
    {error, any()}.
list_journal_s3_exports(Client)
  when is_map(Client) ->
    list_journal_s3_exports(Client, #{}, #{}).

-spec list_journal_s3_exports(aws_client:aws_client(), map(), map()) ->
    {ok, list_journal_s3_exports_response(), tuple()} |
    {error, any()}.
list_journal_s3_exports(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_journal_s3_exports(Client, QueryMap, HeadersMap, []).

-spec list_journal_s3_exports(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_journal_s3_exports_response(), tuple()} |
    {error, any()}.
list_journal_s3_exports(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/journal-s3-exports"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns all journal export jobs for a specified ledger.
%%
%% This action returns a maximum of `MaxResults' items, and is paginated
%% so that
%% you can retrieve all the items by calling
%% `ListJournalS3ExportsForLedger'
%% multiple times.
%%
%% This action does not return any expired export jobs. For more information,
%% see Export job expiration:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration
%% in the Amazon QLDB Developer
%% Guide.
-spec list_journal_s3_exports_for_ledger(aws_client:aws_client(), binary() | list()) ->
    {ok, list_journal_s3_exports_for_ledger_response(), tuple()} |
    {error, any()}.
list_journal_s3_exports_for_ledger(Client, Name)
  when is_map(Client) ->
    list_journal_s3_exports_for_ledger(Client, Name, #{}, #{}).

-spec list_journal_s3_exports_for_ledger(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_journal_s3_exports_for_ledger_response(), tuple()} |
    {error, any()}.
list_journal_s3_exports_for_ledger(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_journal_s3_exports_for_ledger(Client, Name, QueryMap, HeadersMap, []).

-spec list_journal_s3_exports_for_ledger(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_journal_s3_exports_for_ledger_response(), tuple()} |
    {error, any()}.
list_journal_s3_exports_for_ledger(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ledgers/", aws_util:encode_uri(Name), "/journal-s3-exports"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns all ledgers that are associated with the current Amazon Web
%% Services account and
%% Region.
%%
%% This action returns a maximum of `MaxResults' items and is paginated
%% so that
%% you can retrieve all the items by calling `ListLedgers' multiple
%% times.
-spec list_ledgers(aws_client:aws_client()) ->
    {ok, list_ledgers_response(), tuple()} |
    {error, any()}.
list_ledgers(Client)
  when is_map(Client) ->
    list_ledgers(Client, #{}, #{}).

-spec list_ledgers(aws_client:aws_client(), map(), map()) ->
    {ok, list_ledgers_response(), tuple()} |
    {error, any()}.
list_ledgers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ledgers(Client, QueryMap, HeadersMap, []).

-spec list_ledgers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_ledgers_response(), tuple()} |
    {error, any()}.
list_ledgers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ledgers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"next_token">>, maps:get(<<"next_token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns all tags for a specified Amazon QLDB resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
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

%% @doc Creates a journal stream for a given Amazon QLDB ledger.
%%
%% The stream captures every
%% document revision that is committed to the ledger's journal and
%% delivers the data to a
%% specified Amazon Kinesis Data Streams resource.
-spec stream_journal_to_kinesis(aws_client:aws_client(), binary() | list(), stream_journal_to_kinesis_request()) ->
    {ok, stream_journal_to_kinesis_response(), tuple()} |
    {error, any()} |
    {error, stream_journal_to_kinesis_errors(), tuple()}.
stream_journal_to_kinesis(Client, LedgerName, Input) ->
    stream_journal_to_kinesis(Client, LedgerName, Input, []).

-spec stream_journal_to_kinesis(aws_client:aws_client(), binary() | list(), stream_journal_to_kinesis_request(), proplists:proplist()) ->
    {ok, stream_journal_to_kinesis_response(), tuple()} |
    {error, any()} |
    {error, stream_journal_to_kinesis_errors(), tuple()}.
stream_journal_to_kinesis(Client, LedgerName, Input0, Options0) ->
    Method = post,
    Path = ["/ledgers/", aws_util:encode_uri(LedgerName), "/journal-kinesis-streams"],
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

%% @doc Adds one or more tags to a specified Amazon QLDB resource.
%%
%% A resource can have up to 50 tags. If you try to create more than 50 tags
%% for a
%% resource, your request fails and returns an error.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
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

%% @doc Removes one or more tags from a specified Amazon QLDB resource.
%%
%% You can specify up to 50
%% tag keys to remove.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
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

%% @doc Updates properties on a ledger.
-spec update_ledger(aws_client:aws_client(), binary() | list(), update_ledger_request()) ->
    {ok, update_ledger_response(), tuple()} |
    {error, any()} |
    {error, update_ledger_errors(), tuple()}.
update_ledger(Client, Name, Input) ->
    update_ledger(Client, Name, Input, []).

-spec update_ledger(aws_client:aws_client(), binary() | list(), update_ledger_request(), proplists:proplist()) ->
    {ok, update_ledger_response(), tuple()} |
    {error, any()} |
    {error, update_ledger_errors(), tuple()}.
update_ledger(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/ledgers/", aws_util:encode_uri(Name), ""],
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

%% @doc Updates the permissions mode of a ledger.
%%
%% Before you switch to the `STANDARD' permissions mode, you must first
%% create all required IAM policies and table tags to avoid disruption to
%% your users. To
%% learn more, see Migrating to the standard permissions mode:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating
%% in the Amazon QLDB
%% Developer Guide.
-spec update_ledger_permissions_mode(aws_client:aws_client(), binary() | list(), update_ledger_permissions_mode_request()) ->
    {ok, update_ledger_permissions_mode_response(), tuple()} |
    {error, any()} |
    {error, update_ledger_permissions_mode_errors(), tuple()}.
update_ledger_permissions_mode(Client, Name, Input) ->
    update_ledger_permissions_mode(Client, Name, Input, []).

-spec update_ledger_permissions_mode(aws_client:aws_client(), binary() | list(), update_ledger_permissions_mode_request(), proplists:proplist()) ->
    {ok, update_ledger_permissions_mode_response(), tuple()} |
    {error, any()} |
    {error, update_ledger_permissions_mode_errors(), tuple()}.
update_ledger_permissions_mode(Client, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/ledgers/", aws_util:encode_uri(Name), "/permissions-mode"],
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
    Client1 = Client#{service => <<"qldb">>},
    Host = build_host(<<"qldb">>, Client1),
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
