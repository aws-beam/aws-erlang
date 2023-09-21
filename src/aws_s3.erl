%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_s3).

-export([abort_multipart_upload/4,
         abort_multipart_upload/5,
         complete_multipart_upload/4,
         complete_multipart_upload/5,
         copy_object/4,
         copy_object/5,
         create_bucket/3,
         create_bucket/4,
         create_multipart_upload/4,
         create_multipart_upload/5,
         delete_bucket/3,
         delete_bucket/4,
         delete_bucket_analytics_configuration/3,
         delete_bucket_analytics_configuration/4,
         delete_bucket_cors/3,
         delete_bucket_cors/4,
         delete_bucket_encryption/3,
         delete_bucket_encryption/4,
         delete_bucket_intelligent_tiering_configuration/3,
         delete_bucket_intelligent_tiering_configuration/4,
         delete_bucket_inventory_configuration/3,
         delete_bucket_inventory_configuration/4,
         delete_bucket_lifecycle/3,
         delete_bucket_lifecycle/4,
         delete_bucket_metrics_configuration/3,
         delete_bucket_metrics_configuration/4,
         delete_bucket_ownership_controls/3,
         delete_bucket_ownership_controls/4,
         delete_bucket_policy/3,
         delete_bucket_policy/4,
         delete_bucket_replication/3,
         delete_bucket_replication/4,
         delete_bucket_tagging/3,
         delete_bucket_tagging/4,
         delete_bucket_website/3,
         delete_bucket_website/4,
         delete_object/4,
         delete_object/5,
         delete_object_tagging/4,
         delete_object_tagging/5,
         delete_objects/3,
         delete_objects/4,
         delete_public_access_block/3,
         delete_public_access_block/4,
         get_bucket_accelerate_configuration/2,
         get_bucket_accelerate_configuration/4,
         get_bucket_accelerate_configuration/5,
         get_bucket_acl/2,
         get_bucket_acl/4,
         get_bucket_acl/5,
         get_bucket_analytics_configuration/3,
         get_bucket_analytics_configuration/5,
         get_bucket_analytics_configuration/6,
         get_bucket_cors/2,
         get_bucket_cors/4,
         get_bucket_cors/5,
         get_bucket_encryption/2,
         get_bucket_encryption/4,
         get_bucket_encryption/5,
         get_bucket_intelligent_tiering_configuration/3,
         get_bucket_intelligent_tiering_configuration/5,
         get_bucket_intelligent_tiering_configuration/6,
         get_bucket_inventory_configuration/3,
         get_bucket_inventory_configuration/5,
         get_bucket_inventory_configuration/6,
         get_bucket_lifecycle/2,
         get_bucket_lifecycle/4,
         get_bucket_lifecycle/5,
         get_bucket_lifecycle_configuration/2,
         get_bucket_lifecycle_configuration/4,
         get_bucket_lifecycle_configuration/5,
         get_bucket_location/2,
         get_bucket_location/4,
         get_bucket_location/5,
         get_bucket_logging/2,
         get_bucket_logging/4,
         get_bucket_logging/5,
         get_bucket_metrics_configuration/3,
         get_bucket_metrics_configuration/5,
         get_bucket_metrics_configuration/6,
         get_bucket_notification/2,
         get_bucket_notification/4,
         get_bucket_notification/5,
         get_bucket_notification_configuration/2,
         get_bucket_notification_configuration/4,
         get_bucket_notification_configuration/5,
         get_bucket_ownership_controls/2,
         get_bucket_ownership_controls/4,
         get_bucket_ownership_controls/5,
         get_bucket_policy/2,
         get_bucket_policy/4,
         get_bucket_policy/5,
         get_bucket_policy_status/2,
         get_bucket_policy_status/4,
         get_bucket_policy_status/5,
         get_bucket_replication/2,
         get_bucket_replication/4,
         get_bucket_replication/5,
         get_bucket_request_payment/2,
         get_bucket_request_payment/4,
         get_bucket_request_payment/5,
         get_bucket_tagging/2,
         get_bucket_tagging/4,
         get_bucket_tagging/5,
         get_bucket_versioning/2,
         get_bucket_versioning/4,
         get_bucket_versioning/5,
         get_bucket_website/2,
         get_bucket_website/4,
         get_bucket_website/5,
         get_object/3,
         get_object/5,
         get_object/6,
         get_object_acl/3,
         get_object_acl/5,
         get_object_acl/6,
         get_object_attributes/4,
         get_object_attributes/6,
         get_object_attributes/7,
         get_object_legal_hold/3,
         get_object_legal_hold/5,
         get_object_legal_hold/6,
         get_object_lock_configuration/2,
         get_object_lock_configuration/4,
         get_object_lock_configuration/5,
         get_object_retention/3,
         get_object_retention/5,
         get_object_retention/6,
         get_object_tagging/3,
         get_object_tagging/5,
         get_object_tagging/6,
         get_object_torrent/3,
         get_object_torrent/5,
         get_object_torrent/6,
         get_public_access_block/2,
         get_public_access_block/4,
         get_public_access_block/5,
         head_bucket/3,
         head_bucket/4,
         head_object/4,
         head_object/5,
         list_bucket_analytics_configurations/2,
         list_bucket_analytics_configurations/4,
         list_bucket_analytics_configurations/5,
         list_bucket_intelligent_tiering_configurations/2,
         list_bucket_intelligent_tiering_configurations/4,
         list_bucket_intelligent_tiering_configurations/5,
         list_bucket_inventory_configurations/2,
         list_bucket_inventory_configurations/4,
         list_bucket_inventory_configurations/5,
         list_bucket_metrics_configurations/2,
         list_bucket_metrics_configurations/4,
         list_bucket_metrics_configurations/5,
         list_buckets/1,
         list_buckets/3,
         list_buckets/4,
         list_multipart_uploads/2,
         list_multipart_uploads/4,
         list_multipart_uploads/5,
         list_object_versions/2,
         list_object_versions/4,
         list_object_versions/5,
         list_objects/2,
         list_objects/4,
         list_objects/5,
         list_objects_v2/2,
         list_objects_v2/4,
         list_objects_v2/5,
         list_parts/4,
         list_parts/6,
         list_parts/7,
         put_bucket_accelerate_configuration/3,
         put_bucket_accelerate_configuration/4,
         put_bucket_acl/3,
         put_bucket_acl/4,
         put_bucket_analytics_configuration/3,
         put_bucket_analytics_configuration/4,
         put_bucket_cors/3,
         put_bucket_cors/4,
         put_bucket_encryption/3,
         put_bucket_encryption/4,
         put_bucket_intelligent_tiering_configuration/3,
         put_bucket_intelligent_tiering_configuration/4,
         put_bucket_inventory_configuration/3,
         put_bucket_inventory_configuration/4,
         put_bucket_lifecycle/3,
         put_bucket_lifecycle/4,
         put_bucket_lifecycle_configuration/3,
         put_bucket_lifecycle_configuration/4,
         put_bucket_logging/3,
         put_bucket_logging/4,
         put_bucket_metrics_configuration/3,
         put_bucket_metrics_configuration/4,
         put_bucket_notification/3,
         put_bucket_notification/4,
         put_bucket_notification_configuration/3,
         put_bucket_notification_configuration/4,
         put_bucket_ownership_controls/3,
         put_bucket_ownership_controls/4,
         put_bucket_policy/3,
         put_bucket_policy/4,
         put_bucket_replication/3,
         put_bucket_replication/4,
         put_bucket_request_payment/3,
         put_bucket_request_payment/4,
         put_bucket_tagging/3,
         put_bucket_tagging/4,
         put_bucket_versioning/3,
         put_bucket_versioning/4,
         put_bucket_website/3,
         put_bucket_website/4,
         put_object/4,
         put_object/5,
         put_object_acl/4,
         put_object_acl/5,
         put_object_legal_hold/4,
         put_object_legal_hold/5,
         put_object_lock_configuration/3,
         put_object_lock_configuration/4,
         put_object_retention/4,
         put_object_retention/5,
         put_object_tagging/4,
         put_object_tagging/5,
         put_public_access_block/3,
         put_public_access_block/4,
         restore_object/4,
         restore_object/5,
         select_object_content/4,
         select_object_content/5,
         upload_part/4,
         upload_part/5,
         upload_part_copy/4,
         upload_part_copy/5,
         write_get_object_response/2,
         write_get_object_response/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This action aborts a multipart upload.
%%
%% After a multipart upload is aborted, no additional parts can be uploaded
%% using that upload ID. The storage consumed by any previously uploaded
%% parts will be freed. However, if any part uploads are currently in
%% progress, those part uploads might or might not succeed. As a result, it
%% might be necessary to abort a given multipart upload multiple times in
%% order to completely free all storage consumed by all parts.
%%
%% To verify that all parts have been removed, so you don't get charged
%% for the part storage, you should call the ListParts action and ensure that
%% the parts list is empty.
%%
%% For information about permissions required to use the multipart upload,
%% see Multipart Upload and Permissions.
%%
%% The following operations are related to `AbortMultipartUpload':
%%
%% <ul> <li> CreateMultipartUpload
%%
%% </li> <li> UploadPart
%%
%% </li> <li> CompleteMultipartUpload
%%
%% </li> <li> ListParts
%%
%% </li> <li> ListMultipartUploads
%%
%% </li> </ul>
abort_multipart_upload(Client, Bucket, Key, Input) ->
    abort_multipart_upload(Client, Bucket, Key, Input, []).
abort_multipart_upload(Client, Bucket, Key, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"uploadId">>, <<"UploadId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Completes a multipart upload by assembling previously uploaded parts.
%%
%% You first initiate the multipart upload and then upload all parts using
%% the UploadPart operation. After successfully uploading all relevant parts
%% of an upload, you call this action to complete the upload. Upon receiving
%% this request, Amazon S3 concatenates all the parts in ascending order by
%% part number to create a new object. In the Complete Multipart Upload
%% request, you must provide the parts list. You must ensure that the parts
%% list is complete. This action concatenates the parts that you provide in
%% the list. For each part in the list, you must provide the part number and
%% the `ETag' value, returned after that part was uploaded.
%%
%% Processing of a Complete Multipart Upload request could take several
%% minutes to complete. After Amazon S3 begins processing the request, it
%% sends an HTTP response header that specifies a 200 OK response. While
%% processing is in progress, Amazon S3 periodically sends white space
%% characters to keep the connection from timing out. A request could fail
%% after the initial 200 OK response has been sent. This means that a `200
%% OK' response can contain either a success or an error. If you call the
%% S3 API directly, make sure to design your application to parse the
%% contents of the response and handle it appropriately. If you use Amazon
%% Web Services SDKs, SDKs handle this condition. The SDKs detect the
%% embedded error and apply error handling per your configuration settings
%% (including automatically retrying the request as appropriate). If the
%% condition persists, the SDKs throws an exception (or, for the SDKs that
%% don't use exceptions, they return the error).
%%
%% Note that if `CompleteMultipartUpload' fails, applications should be
%% prepared to retry the failed requests. For more information, see Amazon S3
%% Error Best Practices.
%%
%% You cannot use `Content-Type: application/x-www-form-urlencoded' with
%% Complete Multipart Upload requests. Also, if you do not provide a
%% `Content-Type' header, `CompleteMultipartUpload' returns a 200 OK
%% response.
%%
%% For more information about multipart uploads, see Uploading Objects Using
%% Multipart Upload.
%%
%% For information about permissions required to use the multipart upload
%% API, see Multipart Upload and Permissions.
%%
%% `CompleteMultipartUpload' has the following special errors:
%%
%% <ul> <li> Error code: `EntityTooSmall'
%%
%% <ul> <li> Description: Your proposed upload is smaller than the minimum
%% allowed object size. Each part must be at least 5 MB in size, except the
%% last part.
%%
%% </li> <li> 400 Bad Request
%%
%% </li> </ul> </li> <li> Error code: `InvalidPart'
%%
%% <ul> <li> Description: One or more of the specified parts could not be
%% found. The part might not have been uploaded, or the specified entity tag
%% might not have matched the part's entity tag.
%%
%% </li> <li> 400 Bad Request
%%
%% </li> </ul> </li> <li> Error code: `InvalidPartOrder'
%%
%% <ul> <li> Description: The list of parts was not in ascending order. The
%% parts list must be specified in order by part number.
%%
%% </li> <li> 400 Bad Request
%%
%% </li> </ul> </li> <li> Error code: `NoSuchUpload'
%%
%% <ul> <li> Description: The specified multipart upload does not exist. The
%% upload ID might be invalid, or the multipart upload might have been
%% aborted or completed.
%%
%% </li> <li> 404 Not Found
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% `CompleteMultipartUpload':
%%
%% <ul> <li> CreateMultipartUpload
%%
%% </li> <li> UploadPart
%%
%% </li> <li> AbortMultipartUpload
%%
%% </li> <li> ListParts
%%
%% </li> <li> ListMultipartUploads
%%
%% </li> </ul>
complete_multipart_upload(Client, Bucket, Key, Input) ->
    complete_multipart_upload(Client, Bucket, Key, Input, []).
complete_multipart_upload(Client, Bucket, Key, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-checksum-crc32">>, <<"ChecksumCRC32">>},
                       {<<"x-amz-checksum-crc32c">>, <<"ChecksumCRC32C">>},
                       {<<"x-amz-checksum-sha1">>, <<"ChecksumSHA1">>},
                       {<<"x-amz-checksum-sha256">>, <<"ChecksumSHA256">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"uploadId">>, <<"UploadId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
            {<<"x-amz-expiration">>, <<"Expiration">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
            {<<"x-amz-version-id">>, <<"VersionId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a copy of an object that is already stored in Amazon S3.
%%
%% You can store individual objects of up to 5 TB in Amazon S3. You create a
%% copy of your object up to 5 GB in size in a single atomic action using
%% this API. However, to copy an object greater than 5 GB, you must use the
%% multipart upload Upload Part - Copy (UploadPartCopy) API. For more
%% information, see Copy Object Using the REST Multipart Upload API.
%%
%% All copy requests must be authenticated. Additionally, you must have read
%% access to the source object and write access to the destination bucket.
%% For more information, see REST Authentication. Both the Region that you
%% want to copy the object from and the Region that you want to copy the
%% object to must be enabled for your account.
%%
%% A copy request might return an error when Amazon S3 receives the copy
%% request or while Amazon S3 is copying the files. If the error occurs
%% before the copy action starts, you receive a standard Amazon S3 error. If
%% the error occurs during the copy operation, the error response is embedded
%% in the `200 OK' response. This means that a `200 OK' response can
%% contain either a success or an error. If you call the S3 API directly,
%% make sure to design your application to parse the contents of the response
%% and handle it appropriately. If you use Amazon Web Services SDKs, SDKs
%% handle this condition. The SDKs detect the embedded error and apply error
%% handling per your configuration settings (including automatically retrying
%% the request as appropriate). If the condition persists, the SDKs throws an
%% exception (or, for the SDKs that don't use exceptions, they return the
%% error).
%%
%% If the copy is successful, you receive a response with information about
%% the copied object.
%%
%% If the request is an HTTP 1.1 request, the response is chunk encoded. If
%% it were not, it would not contain the content-length, and you would need
%% to read the entire body.
%%
%% The copy request charge is based on the storage class and Region that you
%% specify for the destination object. The request can also result in a data
%% retrieval charge for the source if the source storage class bills for data
%% retrieval. For pricing information, see Amazon S3 pricing.
%%
%% Amazon S3 transfer acceleration does not support cross-Region copies. If
%% you request a cross-Region copy using a transfer acceleration endpoint,
%% you get a 400 `Bad Request' error. For more information, see Transfer
%% Acceleration.
%%
%% <dl> <dt>Metadata</dt> <dd> When copying an object, you can preserve all
%% metadata (the default) or specify new metadata. However, the access
%% control list (ACL) is not preserved and is set to private for the user
%% making the request. To override the default ACL setting, specify a new ACL
%% when generating a copy request. For more information, see Using ACLs.
%%
%% To specify whether you want the object metadata copied from the source
%% object or replaced with metadata provided in the request, you can
%% optionally add the `x-amz-metadata-directive' header. When you grant
%% permissions, you can use the `s3:x-amz-metadata-directive' condition
%% key to enforce certain metadata behavior when objects are uploaded. For
%% more information, see Specifying Conditions in a Policy in the Amazon S3
%% User Guide. For a complete list of Amazon S3-specific condition keys, see
%% Actions, Resources, and Condition Keys for Amazon S3.
%%
%% `x-amz-website-redirect-location' is unique to each object and must be
%% specified in the request headers to copy the value.
%%
%% </dd> <dt>x-amz-copy-source-if Headers</dt> <dd> To only copy an object
%% under certain conditions, such as whether the `Etag' matches or
%% whether the object was modified before or after a specified date, use the
%% following request parameters:
%%
%% <ul> <li> `x-amz-copy-source-if-match'
%%
%% </li> <li> `x-amz-copy-source-if-none-match'
%%
%% </li> <li> `x-amz-copy-source-if-unmodified-since'
%%
%% </li> <li> `x-amz-copy-source-if-modified-since'
%%
%% </li> </ul> If both the `x-amz-copy-source-if-match' and
%% `x-amz-copy-source-if-unmodified-since' headers are present in the
%% request and evaluate as follows, Amazon S3 returns `200 OK' and copies
%% the data:
%%
%% <ul> <li> `x-amz-copy-source-if-match' condition evaluates to true
%%
%% </li> <li> `x-amz-copy-source-if-unmodified-since' condition evaluates
%% to false
%%
%% </li> </ul> If both the `x-amz-copy-source-if-none-match' and
%% `x-amz-copy-source-if-modified-since' headers are present in the
%% request and evaluate as follows, Amazon S3 returns the `412 Precondition
%% Failed' response code:
%%
%% <ul> <li> `x-amz-copy-source-if-none-match' condition evaluates to
%% false
%%
%% </li> <li> `x-amz-copy-source-if-modified-since' condition evaluates
%% to true
%%
%% </li> </ul> All headers with the `x-amz-' prefix, including
%% `x-amz-copy-source', must be signed.
%%
%% </dd> <dt>Server-side encryption</dt> <dd> Amazon S3 automatically
%% encrypts all new objects that are copied to an S3 bucket. When copying an
%% object, if you don't specify encryption information in your copy
%% request, the encryption setting of the target object is set to the default
%% encryption configuration of the destination bucket. By default, all
%% buckets have a base level of encryption configuration that uses
%% server-side encryption with Amazon S3 managed keys (SSE-S3). If the
%% destination bucket has a default encryption configuration that uses
%% server-side encryption with Key Management Service (KMS) keys (SSE-KMS),
%% dual-layer server-side encryption with Amazon Web Services KMS keys
%% (DSSE-KMS), or server-side encryption with customer-provided encryption
%% keys (SSE-C), Amazon S3 uses the corresponding KMS key, or a
%% customer-provided key to encrypt the target object copy.
%%
%% When you perform a `CopyObject' operation, if you want to use a
%% different type of encryption setting for the target object, you can use
%% other appropriate encryption-related headers to encrypt the target object
%% with a KMS key, an Amazon S3 managed key, or a customer-provided key. With
%% server-side encryption, Amazon S3 encrypts your data as it writes your
%% data to disks in its data centers and decrypts the data when you access
%% it. If the encryption setting in your request is different from the
%% default encryption configuration of the destination bucket, the encryption
%% setting in your request takes precedence. If the source object for the
%% copy is stored in Amazon S3 using SSE-C, you must provide the necessary
%% encryption information in your request so that Amazon S3 can decrypt the
%% object for copying. For more information about server-side encryption, see
%% Using Server-Side Encryption.
%%
%% If a target object uses SSE-KMS, you can enable an S3 Bucket Key for the
%% object. For more information, see Amazon S3 Bucket Keys in the Amazon S3
%% User Guide.
%%
%% </dd> <dt>Access Control List (ACL)-Specific Request Headers</dt> <dd>
%% When copying an object, you can optionally use headers to grant ACL-based
%% permissions. By default, all objects are private. Only the owner has full
%% access control. When adding a new object, you can grant permissions to
%% individual Amazon Web Services accounts or to predefined groups that are
%% defined by Amazon S3. These permissions are then added to the ACL on the
%% object. For more information, see Access Control List (ACL) Overview and
%% Managing ACLs Using the REST API.
%%
%% If the bucket that you're copying objects to uses the bucket owner
%% enforced setting for S3 Object Ownership, ACLs are disabled and no longer
%% affect permissions. Buckets that use this setting only accept `PUT'
%% requests that don't specify an ACL or `PUT' requests that specify
%% bucket owner full control ACLs, such as the
%% `bucket-owner-full-control' canned ACL or an equivalent form of this
%% ACL expressed in the XML format.
%%
%% For more information, see Controlling ownership of objects and disabling
%% ACLs in the Amazon S3 User Guide.
%%
%% If your bucket uses the bucket owner enforced setting for Object
%% Ownership, all objects written to the bucket by any account will be owned
%% by the bucket owner.
%%
%% </dd> <dt>Checksums</dt> <dd> When copying an object, if it has a
%% checksum, that checksum will be copied to the new object by default. When
%% you copy the object over, you can optionally specify a different checksum
%% algorithm to use with the `x-amz-checksum-algorithm' header.
%%
%% </dd> <dt>Storage Class Options</dt> <dd> You can use the `CopyObject'
%% action to change the storage class of an object that is already stored in
%% Amazon S3 by using the `StorageClass' parameter. For more information,
%% see Storage Classes in the Amazon S3 User Guide.
%%
%% If the source object's storage class is GLACIER or DEEP_ARCHIVE, or
%% the object's storage class is INTELLIGENT_TIERING and it's S3
%% Intelligent-Tiering access tier is Archive Access or Deep Archive Access,
%% you must restore a copy of this object before you can use it as a source
%% object for the copy operation. For more information, see RestoreObject.
%% For more information, see Copying Objects.
%%
%% </dd> <dt>Versioning</dt> <dd> By default, `x-amz-copy-source' header
%% identifies the current version of an object to copy. If the current
%% version is a delete marker, Amazon S3 behaves as if the object was
%% deleted. To copy a different version, use the `versionId' subresource.
%%
%% If you enable versioning on the target bucket, Amazon S3 generates a
%% unique version ID for the object being copied. This version ID is
%% different from the version ID of the source object. Amazon S3 returns the
%% version ID of the copied object in the `x-amz-version-id' response
%% header in the response.
%%
%% If you do not enable versioning or suspend it on the target bucket, the
%% version ID that Amazon S3 generates is always null.
%%
%% </dd> </dl> The following operations are related to `CopyObject':
%%
%% <ul> <li> PutObject
%%
%% </li> <li> GetObject
%%
%% </li> </ul>
copy_object(Client, Bucket, Key, Input) ->
    copy_object(Client, Bucket, Key, Input, []).
copy_object(Client, Bucket, Key, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-copy-source-server-side-encryption-customer-algorithm">>, <<"CopySourceSSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-copy-source">>, <<"CopySource">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"x-amz-object-lock-retain-until-date">>, <<"ObjectLockRetainUntilDate">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
                       {<<"x-amz-object-lock-legal-hold">>, <<"ObjectLockLegalHoldStatus">>},
                       {<<"x-amz-tagging">>, <<"Tagging">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-copy-source-server-side-encryption-customer-key">>, <<"CopySourceSSECustomerKey">>},
                       {<<"x-amz-website-redirect-location">>, <<"WebsiteRedirectLocation">>},
                       {<<"Content-Language">>, <<"ContentLanguage">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"Content-Encoding">>, <<"ContentEncoding">>},
                       {<<"x-amz-copy-source-server-side-encryption-customer-key-MD5">>, <<"CopySourceSSECustomerKeyMD5">>},
                       {<<"x-amz-copy-source-if-match">>, <<"CopySourceIfMatch">>},
                       {<<"x-amz-copy-source-if-unmodified-since">>, <<"CopySourceIfUnmodifiedSince">>},
                       {<<"Expires">>, <<"Expires">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-server-side-encryption-context">>, <<"SSEKMSEncryptionContext">>},
                       {<<"Cache-Control">>, <<"CacheControl">>},
                       {<<"x-amz-source-expected-bucket-owner">>, <<"ExpectedSourceBucketOwner">>},
                       {<<"x-amz-metadata-directive">>, <<"MetadataDirective">>},
                       {<<"x-amz-storage-class">>, <<"StorageClass">>},
                       {<<"x-amz-copy-source-if-modified-since">>, <<"CopySourceIfModifiedSince">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-tagging-directive">>, <<"TaggingDirective">>},
                       {<<"x-amz-object-lock-mode">>, <<"ObjectLockMode">>},
                       {<<"Content-Disposition">>, <<"ContentDisposition">>},
                       {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
                       {<<"x-amz-copy-source-if-none-match">>, <<"CopySourceIfNoneMatch">>},
                       {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeadersMapping = [
                             {<<"x-amz-meta-">>, <<"Metadata">>}
                          ],
    {CustomHeaders, Input2} = aws_request:build_custom_headers(CustomHeadersMapping, Input1),

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
            {<<"x-amz-copy-source-version-id">>, <<"CopySourceVersionId">>},
            {<<"x-amz-expiration">>, <<"Expiration">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
            {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
            {<<"x-amz-server-side-encryption-context">>, <<"SSEKMSEncryptionContext">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
            {<<"x-amz-version-id">>, <<"VersionId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates a new S3 bucket.
%%
%% To create a bucket, you must register with Amazon S3 and have a valid
%% Amazon Web Services Access Key ID to authenticate requests. Anonymous
%% requests are never allowed to create buckets. By creating the bucket, you
%% become the bucket owner.
%%
%% Not every string is an acceptable bucket name. For information about
%% bucket naming restrictions, see Bucket naming rules.
%%
%% If you want to create an Amazon S3 on Outposts bucket, see Create Bucket.
%%
%% By default, the bucket is created in the US East (N. Virginia) Region. You
%% can optionally specify a Region in the request body. To constrain the
%% bucket creation to a specific Region, you can use `LocationConstraint'
%% condition key. You might choose a Region to optimize latency, minimize
%% costs, or address regulatory requirements. For example, if you reside in
%% Europe, you will probably find it advantageous to create buckets in the
%% Europe (Ireland) Region. For more information, see Accessing a bucket.
%%
%% If you send your create bucket request to the `s3.amazonaws.com'
%% endpoint, the request goes to the `us-east-1' Region. Accordingly, the
%% signature calculations in Signature Version 4 must use `us-east-1' as
%% the Region, even if the location constraint in the request specifies
%% another Region where the bucket is to be created. If you create a bucket
%% in a Region other than US East (N. Virginia), your application must be
%% able to handle 307 redirect. For more information, see Virtual hosting of
%% buckets.
%%
%% <dl> <dt>Permissions</dt> <dd> In addition to `s3:CreateBucket', the
%% following permissions are required when your `CreateBucket' request
%% includes specific headers:
%%
%% <ul> <li> Access control lists (ACLs) - If your `CreateBucket' request
%% specifies access control list (ACL) permissions and the ACL is
%% public-read, public-read-write, authenticated-read, or if you specify
%% access permissions explicitly through any other ACL, both
%% `s3:CreateBucket' and `s3:PutBucketAcl' permissions are needed. If
%% the ACL for the `CreateBucket' request is private or if the request
%% doesn't specify any ACLs, only `s3:CreateBucket' permission is
%% needed.
%%
%% </li> <li> Object Lock - If `ObjectLockEnabledForBucket' is set to
%% true in your `CreateBucket' request,
%% `s3:PutBucketObjectLockConfiguration' and `s3:PutBucketVersioning'
%% permissions are required.
%%
%% </li> <li> S3 Object Ownership - If your `CreateBucket' request
%% includes the `x-amz-object-ownership' header, then the
%% `s3:PutBucketOwnershipControls' permission is required. By default,
%% `ObjectOwnership' is set to `BucketOWnerEnforced' and ACLs are
%% disabled. We recommend keeping ACLs disabled, except in uncommon use cases
%% where you must control access for each object individually. If you want to
%% change the `ObjectOwnership' setting, you can use the
%% `x-amz-object-ownership' header in your `CreateBucket' request to
%% set the `ObjectOwnership' setting of your choice. For more information
%% about S3 Object Ownership, see Controlling object ownership in the Amazon
%% S3 User Guide.
%%
%% </li> <li> S3 Block Public Access - If your specific use case requires
%% granting public access to your S3 resources, you can disable Block Public
%% Access. You can create a new bucket with Block Public Access enabled, then
%% separately call the `DeletePublicAccessBlock' API. To use this
%% operation, you must have the `s3:PutBucketPublicAccessBlock'
%% permission. By default, all Block Public Access settings are enabled for
%% new buckets. To avoid inadvertent exposure of your resources, we recommend
%% keeping the S3 Block Public Access settings enabled. For more information
%% about S3 Block Public Access, see Blocking public access to your Amazon S3
%% storage in the Amazon S3 User Guide.
%%
%% </li> </ul> </dd> </dl> If your `CreateBucket' request sets
%% `BucketOwnerEnforced' for Amazon S3 Object Ownership and specifies a
%% bucket ACL that provides access to an external Amazon Web Services
%% account, your request fails with a `400' error and returns the
%% `InvalidBucketAcLWithObjectOwnership' error code. For more
%% information, see Setting Object Ownership on an existing bucket in the
%% Amazon S3 User Guide.
%%
%% The following operations are related to `CreateBucket':
%%
%% <ul> <li> PutObject
%%
%% </li> <li> DeleteBucket
%%
%% </li> </ul>
create_bucket(Client, Bucket, Input) ->
    create_bucket(Client, Bucket, Input, []).
create_bucket(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-write">>, <<"GrantWrite">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-bucket-object-lock-enabled">>, <<"ObjectLockEnabledForBucket">>},
                       {<<"x-amz-object-ownership">>, <<"ObjectOwnership">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Location">>, <<"Location">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc This action initiates a multipart upload and returns an upload ID.
%%
%% This upload ID is used to associate all of the parts in the specific
%% multipart upload. You specify this upload ID in each of your subsequent
%% upload part requests (see UploadPart). You also include this upload ID in
%% the final request to either complete or abort the multipart upload
%% request.
%%
%% For more information about multipart uploads, see Multipart Upload
%% Overview.
%%
%% If you have configured a lifecycle rule to abort incomplete multipart
%% uploads, the upload must complete within the number of days specified in
%% the bucket lifecycle configuration. Otherwise, the incomplete multipart
%% upload becomes eligible for an abort action and Amazon S3 aborts the
%% multipart upload. For more information, see Aborting Incomplete Multipart
%% Uploads Using a Bucket Lifecycle Configuration.
%%
%% For information about the permissions required to use the multipart upload
%% API, see Multipart Upload and Permissions.
%%
%% For request signing, multipart upload is just a series of regular
%% requests. You initiate a multipart upload, send one or more requests to
%% upload parts, and then complete the multipart upload process. You sign
%% each request individually. There is nothing special about signing
%% multipart upload requests. For more information about signing, see
%% Authenticating Requests (Amazon Web Services Signature Version 4).
%%
%% After you initiate a multipart upload and upload one or more parts, to
%% stop being charged for storing the uploaded parts, you must either
%% complete or abort the multipart upload. Amazon S3 frees up the space used
%% to store the parts and stop charging you for storing them only after you
%% either complete or abort a multipart upload.
%%
%% Server-side encryption is for data encryption at rest. Amazon S3 encrypts
%% your data as it writes it to disks in its data centers and decrypts it
%% when you access it. Amazon S3 automatically encrypts all new objects that
%% are uploaded to an S3 bucket. When doing a multipart upload, if you
%% don't specify encryption information in your request, the encryption
%% setting of the uploaded parts is set to the default encryption
%% configuration of the destination bucket. By default, all buckets have a
%% base level of encryption configuration that uses server-side encryption
%% with Amazon S3 managed keys (SSE-S3). If the destination bucket has a
%% default encryption configuration that uses server-side encryption with an
%% Key Management Service (KMS) key (SSE-KMS), or a customer-provided
%% encryption key (SSE-C), Amazon S3 uses the corresponding KMS key, or a
%% customer-provided key to encrypt the uploaded parts. When you perform a
%% CreateMultipartUpload operation, if you want to use a different type of
%% encryption setting for the uploaded parts, you can request that Amazon S3
%% encrypts the object with a KMS key, an Amazon S3 managed key, or a
%% customer-provided key. If the encryption setting in your request is
%% different from the default encryption configuration of the destination
%% bucket, the encryption setting in your request takes precedence. If you
%% choose to provide your own encryption key, the request headers you provide
%% in UploadPart and UploadPartCopy requests must match the headers you used
%% in the request to initiate the upload by using
%% `CreateMultipartUpload'. You can request that Amazon S3 save the
%% uploaded parts encrypted with server-side encryption with an Amazon S3
%% managed key (SSE-S3), an Key Management Service (KMS) key (SSE-KMS), or a
%% customer-provided encryption key (SSE-C).
%%
%% To perform a multipart upload with encryption by using an Amazon Web
%% Services KMS key, the requester must have permission to the
%% `kms:Decrypt' and `kms:GenerateDataKey*' actions on the key. These
%% permissions are required because Amazon S3 must decrypt and read data from
%% the encrypted file parts before it completes the multipart upload. For
%% more information, see Multipart upload API and permissions and Protecting
%% data using server-side encryption with Amazon Web Services KMS in the
%% Amazon S3 User Guide.
%%
%% If your Identity and Access Management (IAM) user or role is in the same
%% Amazon Web Services account as the KMS key, then you must have these
%% permissions on the key policy. If your IAM user or role belongs to a
%% different account than the key, then you must have the permissions on both
%% the key policy and your IAM user or role.
%%
%% For more information, see Protecting Data Using Server-Side Encryption.
%%
%% <dl> <dt>Access Permissions</dt> <dd> When copying an object, you can
%% optionally specify the accounts or groups that should be granted specific
%% permissions on the new object. There are two ways to grant the permissions
%% using the request headers:
%%
%% <ul> <li> Specify a canned ACL with the `x-amz-acl' request header.
%% For more information, see Canned ACL.
%%
%% </li> <li> Specify access permissions explicitly with the
%% `x-amz-grant-read', `x-amz-grant-read-acp',
%% `x-amz-grant-write-acp', and `x-amz-grant-full-control' headers.
%% These parameters map to the set of permissions that Amazon S3 supports in
%% an ACL. For more information, see Access Control List (ACL) Overview.
%%
%% </li> </ul> You can use either a canned ACL or specify access permissions
%% explicitly. You cannot do both.
%%
%% </dd> <dt>Server-Side- Encryption-Specific Request Headers</dt> <dd>
%% Amazon S3 encrypts data by using server-side encryption with an Amazon S3
%% managed key (SSE-S3) by default. Server-side encryption is for data
%% encryption at rest. Amazon S3 encrypts your data as it writes it to disks
%% in its data centers and decrypts it when you access it. You can request
%% that Amazon S3 encrypts data at rest by using server-side encryption with
%% other key options. The option you use depends on whether you want to use
%% KMS keys (SSE-KMS) or provide your own encryption keys (SSE-C).
%%
%% <ul> <li> Use KMS keys (SSE-KMS) that include the Amazon Web Services
%% managed key (`aws/s3') and KMS customer managed keys stored in Key
%% Management Service (KMS) – If you want Amazon Web Services to manage the
%% keys used to encrypt data, specify the following headers in the request.
%%
%% <ul> <li> `x-amz-server-side-encryption'
%%
%% </li> <li> `x-amz-server-side-encryption-aws-kms-key-id'
%%
%% </li> <li> `x-amz-server-side-encryption-context'
%%
%% </li> </ul> If you specify `x-amz-server-side-encryption:aws:kms', but
%% don't provide `x-amz-server-side-encryption-aws-kms-key-id',
%% Amazon S3 uses the Amazon Web Services managed key (`aws/s3' key) in
%% KMS to protect the data.
%%
%% All `GET' and `PUT' requests for an object protected by KMS fail
%% if you don't make them by using Secure Sockets Layer (SSL), Transport
%% Layer Security (TLS), or Signature Version 4.
%%
%% For more information about server-side encryption with KMS keys (SSE-KMS),
%% see Protecting Data Using Server-Side Encryption with KMS keys.
%%
%% </li> <li> Use customer-provided encryption keys (SSE-C) – If you want to
%% manage your own encryption keys, provide all the following headers in the
%% request.
%%
%% <ul> <li> `x-amz-server-side-encryption-customer-algorithm'
%%
%% </li> <li> `x-amz-server-side-encryption-customer-key'
%%
%% </li> <li> `x-amz-server-side-encryption-customer-key-MD5'
%%
%% </li> </ul> For more information about server-side encryption with
%% customer-provided encryption keys (SSE-C), see Protecting data using
%% server-side encryption with customer-provided encryption keys (SSE-C).
%%
%% </li> </ul> </dd> <dt>Access-Control-List (ACL)-Specific Request
%% Headers</dt> <dd> You also can use the following access control–related
%% headers with this operation. By default, all objects are private. Only the
%% owner has full access control. When adding a new object, you can grant
%% permissions to individual Amazon Web Services accounts or to predefined
%% groups defined by Amazon S3. These permissions are then added to the
%% access control list (ACL) on the object. For more information, see Using
%% ACLs. With this operation, you can grant access permissions using one of
%% the following two methods:
%%
%% <ul> <li> Specify a canned ACL (`x-amz-acl') — Amazon S3 supports a
%% set of predefined ACLs, known as canned ACLs. Each canned ACL has a
%% predefined set of grantees and permissions. For more information, see
%% Canned ACL.
%%
%% </li> <li> Specify access permissions explicitly — To explicitly grant
%% access permissions to specific Amazon Web Services accounts or groups, use
%% the following headers. Each header maps to specific permissions that
%% Amazon S3 supports in an ACL. For more information, see Access Control
%% List (ACL) Overview. In the header, you specify a list of grantees who get
%% the specific permission. To grant permissions explicitly, use:
%%
%% <ul> <li> `x-amz-grant-read'
%%
%% </li> <li> `x-amz-grant-write'
%%
%% </li> <li> `x-amz-grant-read-acp'
%%
%% </li> <li> `x-amz-grant-write-acp'
%%
%% </li> <li> `x-amz-grant-full-control'
%%
%% </li> </ul> You specify each grantee as a type=value pair, where the type
%% is one of the following:
%%
%% <ul> <li> `id' – if the value specified is the canonical user ID of an
%% Amazon Web Services account
%%
%% </li> <li> `uri' – if you are granting permissions to a predefined
%% group
%%
%% </li> <li> `emailAddress' – if the value specified is the email
%% address of an Amazon Web Services account
%%
%% Using email addresses to specify a grantee is only supported in the
%% following Amazon Web Services Regions:
%%
%% US East (N. Virginia)
%%
%% US West (N. California)
%%
%% US West (Oregon)
%%
%% Asia Pacific (Singapore)
%%
%% Asia Pacific (Sydney)
%%
%% Asia Pacific (Tokyo)
%%
%% Europe (Ireland)
%%
%% South America (São Paulo)
%%
%% For a list of all the Amazon S3 supported Regions and endpoints, see
%% Regions and Endpoints in the Amazon Web Services General Reference.
%%
%% </li> </ul> For example, the following `x-amz-grant-read' header
%% grants the Amazon Web Services accounts identified by account IDs
%% permissions to read object data and its metadata:
%%
%% `x-amz-grant-read: id=&quot;11112222333&quot;, id=&quot;444455556666&quot;
%% '
%%
%% </li> </ul> </dd> </dl> The following operations are related to
%% `CreateMultipartUpload':
%%
%% <ul> <li> UploadPart
%%
%% </li> <li> CompleteMultipartUpload
%%
%% </li> <li> AbortMultipartUpload
%%
%% </li> <li> ListParts
%%
%% </li> <li> ListMultipartUploads
%%
%% </li> </ul>
create_multipart_upload(Client, Bucket, Key, Input) ->
    create_multipart_upload(Client, Bucket, Key, Input, []).
create_multipart_upload(Client, Bucket, Key, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?uploads"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
                       {<<"Cache-Control">>, <<"CacheControl">>},
                       {<<"x-amz-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-Disposition">>, <<"ContentDisposition">>},
                       {<<"Content-Encoding">>, <<"ContentEncoding">>},
                       {<<"Content-Language">>, <<"ContentLanguage">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"Expires">>, <<"Expires">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-object-lock-legal-hold">>, <<"ObjectLockLegalHoldStatus">>},
                       {<<"x-amz-object-lock-mode">>, <<"ObjectLockMode">>},
                       {<<"x-amz-object-lock-retain-until-date">>, <<"ObjectLockRetainUntilDate">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
                       {<<"x-amz-server-side-encryption-context">>, <<"SSEKMSEncryptionContext">>},
                       {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
                       {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
                       {<<"x-amz-storage-class">>, <<"StorageClass">>},
                       {<<"x-amz-tagging">>, <<"Tagging">>},
                       {<<"x-amz-website-redirect-location">>, <<"WebsiteRedirectLocation">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeadersMapping = [
                             {<<"x-amz-meta-">>, <<"Metadata">>}
                          ],
    {CustomHeaders, Input2} = aws_request:build_custom_headers(CustomHeadersMapping, Input1),

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-abort-date">>, <<"AbortDate">>},
            {<<"x-amz-abort-rule-id">>, <<"AbortRuleId">>},
            {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
            {<<"x-amz-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
            {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
            {<<"x-amz-server-side-encryption-context">>, <<"SSEKMSEncryptionContext">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Deletes the S3 bucket.
%%
%% All objects (including all object versions and delete markers) in the
%% bucket must be deleted before the bucket itself can be deleted.
%%
%% The following operations are related to `DeleteBucket':
%%
%% <ul> <li> CreateBucket
%%
%% </li> <li> DeleteObject
%%
%% </li> </ul>
delete_bucket(Client, Bucket, Input) ->
    delete_bucket(Client, Bucket, Input, []).
delete_bucket(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), ""],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Deletes an analytics configuration for the bucket (specified by the
%% analytics configuration ID).
%%
%% To use this operation, you must have permissions to perform the
%% `s3:PutAnalyticsConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% For information about the Amazon S3 analytics feature, see Amazon S3
%% Analytics – Storage Class Analysis.
%%
%% The following operations are related to
%% `DeleteBucketAnalyticsConfiguration':
%%
%% <ul> <li> GetBucketAnalyticsConfiguration
%%
%% </li> <li> ListBucketAnalyticsConfigurations
%%
%% </li> <li> PutBucketAnalyticsConfiguration
%%
%% </li> </ul>
delete_bucket_analytics_configuration(Client, Bucket, Input) ->
    delete_bucket_analytics_configuration(Client, Bucket, Input, []).
delete_bucket_analytics_configuration(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?analytics"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"id">>, <<"Id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Deletes the `cors' configuration information set for the bucket.
%%
%% To use this operation, you must have permission to perform the
%% `s3:PutBucketCORS' action. The bucket owner has this permission by
%% default and can grant this permission to others.
%%
%% For information about `cors', see Enabling Cross-Origin Resource
%% Sharing in the Amazon S3 User Guide.
%%
%% == Related Resources ==
%%
%% <ul> <li> PutBucketCors
%%
%% </li> <li> RESTOPTIONSobject
%%
%% </li> </ul>
delete_bucket_cors(Client, Bucket, Input) ->
    delete_bucket_cors(Client, Bucket, Input, []).
delete_bucket_cors(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?cors"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc This implementation of the DELETE action resets the default
%% encryption for the bucket as server-side encryption with Amazon S3 managed
%% keys (SSE-S3).
%%
%% For information about the bucket default encryption feature, see Amazon S3
%% Bucket Default Encryption in the Amazon S3 User Guide.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:PutEncryptionConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to your
%% Amazon S3 Resources in the Amazon S3 User Guide.
%%
%% The following operations are related to `DeleteBucketEncryption':
%%
%% <ul> <li> PutBucketEncryption
%%
%% </li> <li> GetBucketEncryption
%%
%% </li> </ul>
delete_bucket_encryption(Client, Bucket, Input) ->
    delete_bucket_encryption(Client, Bucket, Input, []).
delete_bucket_encryption(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?encryption"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Deletes the S3 Intelligent-Tiering configuration from the specified
%% bucket.
%%
%% The S3 Intelligent-Tiering storage class is designed to optimize storage
%% costs by automatically moving data to the most cost-effective storage
%% access tier, without performance impact or operational overhead. S3
%% Intelligent-Tiering delivers automatic cost savings in three low latency
%% and high throughput access tiers. To get the lowest storage cost on data
%% that can be accessed in minutes to hours, you can choose to activate
%% additional archiving capabilities.
%%
%% The S3 Intelligent-Tiering storage class is the ideal storage class for
%% data with unknown, changing, or unpredictable access patterns, independent
%% of object size or retention period. If the size of an object is less than
%% 128 KB, it is not monitored and not eligible for auto-tiering. Smaller
%% objects can be stored, but they are always charged at the Frequent Access
%% tier rates in the S3 Intelligent-Tiering storage class.
%%
%% For more information, see Storage class for automatically optimizing
%% frequently and infrequently accessed objects.
%%
%% Operations related to `DeleteBucketIntelligentTieringConfiguration'
%% include:
%%
%% <ul> <li> GetBucketIntelligentTieringConfiguration
%%
%% </li> <li> PutBucketIntelligentTieringConfiguration
%%
%% </li> <li> ListBucketIntelligentTieringConfigurations
%%
%% </li> </ul>
delete_bucket_intelligent_tiering_configuration(Client, Bucket, Input) ->
    delete_bucket_intelligent_tiering_configuration(Client, Bucket, Input, []).
delete_bucket_intelligent_tiering_configuration(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?intelligent-tiering"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"id">>, <<"Id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Deletes an inventory configuration (identified by the inventory ID)
%% from the bucket.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:PutInventoryConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% For information about the Amazon S3 inventory feature, see Amazon S3
%% Inventory.
%%
%% Operations related to `DeleteBucketInventoryConfiguration' include:
%%
%% <ul> <li> GetBucketInventoryConfiguration
%%
%% </li> <li> PutBucketInventoryConfiguration
%%
%% </li> <li> ListBucketInventoryConfigurations
%%
%% </li> </ul>
delete_bucket_inventory_configuration(Client, Bucket, Input) ->
    delete_bucket_inventory_configuration(Client, Bucket, Input, []).
delete_bucket_inventory_configuration(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?inventory"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"id">>, <<"Id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Deletes the lifecycle configuration from the specified bucket.
%%
%% Amazon S3 removes all the lifecycle configuration rules in the lifecycle
%% subresource associated with the bucket. Your objects never expire, and
%% Amazon S3 no longer automatically deletes any objects on the basis of
%% rules contained in the deleted lifecycle configuration.
%%
%% To use this operation, you must have permission to perform the
%% `s3:PutLifecycleConfiguration' action. By default, the bucket owner
%% has this permission and the bucket owner can grant this permission to
%% others.
%%
%% There is usually some time lag before lifecycle configuration deletion is
%% fully propagated to all the Amazon S3 systems.
%%
%% For more information about the object expiration, see Elements to Describe
%% Lifecycle Actions.
%%
%% Related actions include:
%%
%% <ul> <li> PutBucketLifecycleConfiguration
%%
%% </li> <li> GetBucketLifecycleConfiguration
%%
%% </li> </ul>
delete_bucket_lifecycle(Client, Bucket, Input) ->
    delete_bucket_lifecycle(Client, Bucket, Input, []).
delete_bucket_lifecycle(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?lifecycle"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Deletes a metrics configuration for the Amazon CloudWatch request
%% metrics (specified by the metrics configuration ID) from the bucket.
%%
%% Note that this doesn't include the daily storage metrics.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:PutMetricsConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% For information about CloudWatch request metrics for Amazon S3, see
%% Monitoring Metrics with Amazon CloudWatch.
%%
%% The following operations are related to
%% `DeleteBucketMetricsConfiguration':
%%
%% <ul> <li> GetBucketMetricsConfiguration
%%
%% </li> <li> PutBucketMetricsConfiguration
%%
%% </li> <li> ListBucketMetricsConfigurations
%%
%% </li> <li> Monitoring Metrics with Amazon CloudWatch
%%
%% </li> </ul>
delete_bucket_metrics_configuration(Client, Bucket, Input) ->
    delete_bucket_metrics_configuration(Client, Bucket, Input, []).
delete_bucket_metrics_configuration(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?metrics"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"id">>, <<"Id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Removes `OwnershipControls' for an Amazon S3 bucket.
%%
%% To use this operation, you must have the
%% `s3:PutBucketOwnershipControls' permission. For more information about
%% Amazon S3 permissions, see Specifying Permissions in a Policy.
%%
%% For information about Amazon S3 Object Ownership, see Using Object
%% Ownership.
%%
%% The following operations are related to
%% `DeleteBucketOwnershipControls':
%%
%% <ul> <li> `GetBucketOwnershipControls'
%%
%% </li> <li> `PutBucketOwnershipControls'
%%
%% </li> </ul>
delete_bucket_ownership_controls(Client, Bucket, Input) ->
    delete_bucket_ownership_controls(Client, Bucket, Input, []).
delete_bucket_ownership_controls(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?ownershipControls"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc This implementation of the DELETE action uses the policy subresource
%% to delete the policy of a specified bucket.
%%
%% If you are using an identity other than the root user of the Amazon Web
%% Services account that owns the bucket, the calling identity must have the
%% `DeleteBucketPolicy' permissions on the specified bucket and belong to
%% the bucket owner's account to use this operation.
%%
%% If you don't have `DeleteBucketPolicy' permissions, Amazon S3
%% returns a `403 Access Denied' error. If you have the correct
%% permissions, but you're not using an identity that belongs to the
%% bucket owner's account, Amazon S3 returns a `405 Method Not
%% Allowed' error.
%%
%% To ensure that bucket owners don't inadvertently lock themselves out
%% of their own buckets, the root principal in a bucket owner's Amazon
%% Web Services account can perform the `GetBucketPolicy',
%% `PutBucketPolicy', and `DeleteBucketPolicy' API actions, even if
%% their bucket policy explicitly denies the root principal's access.
%% Bucket owner root principals can only be blocked from performing these API
%% actions by VPC endpoint policies and Amazon Web Services Organizations
%% policies.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% UserPolicies.
%%
%% The following operations are related to `DeleteBucketPolicy'
%%
%% <ul> <li> CreateBucket
%%
%% </li> <li> DeleteObject
%%
%% </li> </ul>
delete_bucket_policy(Client, Bucket, Input) ->
    delete_bucket_policy(Client, Bucket, Input, []).
delete_bucket_policy(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?policy"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Deletes the replication configuration from the bucket.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:PutReplicationConfiguration' action. The bucket owner has these
%% permissions by default and can grant it to others. For more information
%% about permissions, see Permissions Related to Bucket Subresource
%% Operations and Managing Access Permissions to Your Amazon S3 Resources.
%%
%% It can take a while for the deletion of a replication configuration to
%% fully propagate.
%%
%% For information about replication configuration, see Replication in the
%% Amazon S3 User Guide.
%%
%% The following operations are related to `DeleteBucketReplication':
%%
%% <ul> <li> PutBucketReplication
%%
%% </li> <li> GetBucketReplication
%%
%% </li> </ul>
delete_bucket_replication(Client, Bucket, Input) ->
    delete_bucket_replication(Client, Bucket, Input, []).
delete_bucket_replication(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?replication"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Deletes the tags from the bucket.
%%
%% To use this operation, you must have permission to perform the
%% `s3:PutBucketTagging' action. By default, the bucket owner has this
%% permission and can grant this permission to others.
%%
%% The following operations are related to `DeleteBucketTagging':
%%
%% <ul> <li> GetBucketTagging
%%
%% </li> <li> PutBucketTagging
%%
%% </li> </ul>
delete_bucket_tagging(Client, Bucket, Input) ->
    delete_bucket_tagging(Client, Bucket, Input, []).
delete_bucket_tagging(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?tagging"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc This action removes the website configuration for a bucket.
%%
%% Amazon S3 returns a `200 OK' response upon successfully deleting a
%% website configuration on the specified bucket. You will get a `200 OK'
%% response if the website configuration you are trying to delete does not
%% exist on the bucket. Amazon S3 returns a `404' response if the bucket
%% specified in the request does not exist.
%%
%% This DELETE action requires the `S3:DeleteBucketWebsite' permission.
%% By default, only the bucket owner can delete the website configuration
%% attached to a bucket. However, bucket owners can grant other users
%% permission to delete the website configuration by writing a bucket policy
%% granting them the `S3:DeleteBucketWebsite' permission.
%%
%% For more information about hosting websites, see Hosting Websites on
%% Amazon S3.
%%
%% The following operations are related to `DeleteBucketWebsite':
%%
%% <ul> <li> GetBucketWebsite
%%
%% </li> <li> PutBucketWebsite
%%
%% </li> </ul>
delete_bucket_website(Client, Bucket, Input) ->
    delete_bucket_website(Client, Bucket, Input, []).
delete_bucket_website(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?website"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Removes the null version (if there is one) of an object and inserts a
%% delete marker, which becomes the latest version of the object.
%%
%% If there isn't a null version, Amazon S3 does not remove any objects
%% but will still respond that the command was successful.
%%
%% To remove a specific version, you must use the version Id subresource.
%% Using this subresource permanently deletes the version. If the object
%% deleted is a delete marker, Amazon S3 sets the response header,
%% `x-amz-delete-marker', to true.
%%
%% If the object you want to delete is in a bucket where the bucket
%% versioning configuration is MFA Delete enabled, you must include the
%% `x-amz-mfa' request header in the DELETE `versionId' request.
%% Requests that include `x-amz-mfa' must use HTTPS.
%%
%% For more information about MFA Delete, see Using MFA Delete. To see sample
%% requests that use versioning, see Sample Request.
%%
%% You can delete objects by explicitly calling DELETE Object or configure
%% its lifecycle (PutBucketLifecycle) to enable Amazon S3 to remove them for
%% you. If you want to block users or accounts from removing or deleting
%% objects from your bucket, you must deny them the `s3:DeleteObject',
%% `s3:DeleteObjectVersion', and `s3:PutLifeCycleConfiguration'
%% actions.
%%
%% The following action is related to `DeleteObject':
%%
%% <ul> <li> PutObject
%%
%% </li> </ul>
delete_object(Client, Bucket, Key, Input) ->
    delete_object(Client, Bucket, Key, Input, []).
delete_object(Client, Bucket, Key, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-bypass-governance-retention">>, <<"BypassGovernanceRetention">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-mfa">>, <<"MFA">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-delete-marker">>, <<"DeleteMarker">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-version-id">>, <<"VersionId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Removes the entire tag set from the specified object.
%%
%% For more information about managing object tags, see Object Tagging.
%%
%% To use this operation, you must have permission to perform the
%% `s3:DeleteObjectTagging' action.
%%
%% To delete tags of a specific object version, add the `versionId' query
%% parameter in the request. You will need permission for the
%% `s3:DeleteObjectVersionTagging' action.
%%
%% The following operations are related to `DeleteObjectTagging':
%%
%% <ul> <li> PutObjectTagging
%%
%% </li> <li> GetObjectTagging
%%
%% </li> </ul>
delete_object_tagging(Client, Bucket, Key, Input) ->
    delete_object_tagging(Client, Bucket, Key, Input, []).
delete_object_tagging(Client, Bucket, Key, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?tagging"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-version-id">>, <<"VersionId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc This action enables you to delete multiple objects from a bucket
%% using a single HTTP request.
%%
%% If you know the object keys that you want to delete, then this action
%% provides a suitable alternative to sending individual delete requests,
%% reducing per-request overhead.
%%
%% The request contains a list of up to 1000 keys that you want to delete. In
%% the XML, you provide the object key names, and optionally, version IDs if
%% you want to delete a specific version of the object from a
%% versioning-enabled bucket. For each key, Amazon S3 performs a delete
%% action and returns the result of that delete, success, or failure, in the
%% response. Note that if the object specified in the request is not found,
%% Amazon S3 returns the result as deleted.
%%
%% The action supports two modes for the response: verbose and quiet. By
%% default, the action uses verbose mode in which the response includes the
%% result of deletion of each key in your request. In quiet mode the response
%% includes only keys where the delete action encountered an error. For a
%% successful deletion, the action does not return any information about the
%% delete in the response body.
%%
%% When performing this action on an MFA Delete enabled bucket, that attempts
%% to delete any versioned objects, you must include an MFA token. If you do
%% not provide one, the entire request will fail, even if there are
%% non-versioned objects you are trying to delete. If you provide an invalid
%% token, whether there are versioned keys in the request or not, the entire
%% Multi-Object Delete request will fail. For information about MFA Delete,
%% see MFA Delete.
%%
%% Finally, the Content-MD5 header is required for all Multi-Object Delete
%% requests. Amazon S3 uses the header value to ensure that your request body
%% has not been altered in transit.
%%
%% The following operations are related to `DeleteObjects':
%%
%% <ul> <li> CreateMultipartUpload
%%
%% </li> <li> UploadPart
%%
%% </li> <li> CompleteMultipartUpload
%%
%% </li> <li> ListParts
%%
%% </li> <li> AbortMultipartUpload
%%
%% </li> </ul>
delete_objects(Client, Bucket, Input) ->
    delete_objects(Client, Bucket, Input, []).
delete_objects(Client, Bucket, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(Bucket), "?delete"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, true}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-bypass-governance-retention">>, <<"BypassGovernanceRetention">>},
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-mfa">>, <<"MFA">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Removes the `PublicAccessBlock' configuration for an Amazon S3
%% bucket.
%%
%% To use this operation, you must have the
%% `s3:PutBucketPublicAccessBlock' permission. For more information about
%% permissions, see Permissions Related to Bucket Subresource Operations and
%% Managing Access Permissions to Your Amazon S3 Resources.
%%
%% The following operations are related to `DeletePublicAccessBlock':
%%
%% <ul> <li> Using Amazon S3 Block Public Access
%%
%% </li> <li> GetPublicAccessBlock
%%
%% </li> <li> PutPublicAccessBlock
%%
%% </li> <li> GetBucketPolicyStatus
%%
%% </li> </ul>
delete_public_access_block(Client, Bucket, Input) ->
    delete_public_access_block(Client, Bucket, Input, []).
delete_public_access_block(Client, Bucket, Input0, Options0) ->
    Method = delete,
    Path = ["/", aws_util:encode_uri(Bucket), "?publicAccessBlock"],

    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc This implementation of the GET action uses the `accelerate'
%% subresource to return the Transfer Acceleration state of a bucket, which
%% is either `Enabled' or `Suspended'.
%%
%% Amazon S3 Transfer Acceleration is a bucket-level feature that enables you
%% to perform faster data transfers to and from Amazon S3.
%%
%% To use this operation, you must have permission to perform the
%% `s3:GetAccelerateConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to your
%% Amazon S3 Resources in the Amazon S3 User Guide.
%%
%% You set the Transfer Acceleration state of an existing bucket to
%% `Enabled' or `Suspended' by using the
%% PutBucketAccelerateConfiguration operation.
%%
%% A GET `accelerate' request does not return a state value for a bucket
%% that has no transfer acceleration state. A bucket has no Transfer
%% Acceleration state if a state has never been set on the bucket.
%%
%% For more information about transfer acceleration, see Transfer
%% Acceleration in the Amazon S3 User Guide.
%%
%% The following operations are related to
%% `GetBucketAccelerateConfiguration':
%%
%% <ul> <li> PutBucketAccelerateConfiguration
%%
%% </li> </ul>
get_bucket_accelerate_configuration(Client, Bucket)
  when is_map(Client) ->
    get_bucket_accelerate_configuration(Client, Bucket, #{}, #{}).

get_bucket_accelerate_configuration(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_accelerate_configuration(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_accelerate_configuration(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?accelerate"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc This implementation of the `GET' action uses the `acl'
%% subresource to return the access control list (ACL) of a bucket.
%%
%% To use `GET' to return the ACL of the bucket, you must have
%% `READ_ACP' access to the bucket. If `READ_ACP' permission is
%% granted to the anonymous user, you can return the ACL of the bucket
%% without using an authorization header.
%%
%% To use this API operation against an access point, provide the alias of
%% the access point in place of the bucket name.
%%
%% To use this API operation against an Object Lambda access point, provide
%% the alias of the Object Lambda access point in place of the bucket name.
%% If the Object Lambda access point alias in a request is not valid, the
%% error code `InvalidAccessPointAliasError' is returned. For more
%% information about `InvalidAccessPointAliasError', see List of Error
%% Codes.
%%
%% If your bucket uses the bucket owner enforced setting for S3 Object
%% Ownership, requests to read ACLs are still supported and return the
%% `bucket-owner-full-control' ACL with the owner being the account that
%% created the bucket. For more information, see Controlling object ownership
%% and disabling ACLs in the Amazon S3 User Guide.
%%
%% The following operations are related to `GetBucketAcl':
%%
%% <ul> <li> ListObjects
%%
%% </li> </ul>
get_bucket_acl(Client, Bucket)
  when is_map(Client) ->
    get_bucket_acl(Client, Bucket, #{}, #{}).

get_bucket_acl(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_acl(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_acl(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?acl"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc This implementation of the GET action returns an analytics
%% configuration (identified by the analytics configuration ID) from the
%% bucket.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:GetAnalyticsConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources in the Amazon S3 User Guide.
%%
%% For information about Amazon S3 analytics feature, see Amazon S3 Analytics
%% – Storage Class Analysis in the Amazon S3 User Guide.
%%
%% The following operations are related to
%% `GetBucketAnalyticsConfiguration':
%%
%% <ul> <li> DeleteBucketAnalyticsConfiguration
%%
%% </li> <li> ListBucketAnalyticsConfigurations
%%
%% </li> <li> PutBucketAnalyticsConfiguration
%%
%% </li> </ul>
get_bucket_analytics_configuration(Client, Bucket, Id)
  when is_map(Client) ->
    get_bucket_analytics_configuration(Client, Bucket, Id, #{}, #{}).

get_bucket_analytics_configuration(Client, Bucket, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_analytics_configuration(Client, Bucket, Id, QueryMap, HeadersMap, []).

get_bucket_analytics_configuration(Client, Bucket, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?analytics"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the Cross-Origin Resource Sharing (CORS) configuration
%% information set for the bucket.
%%
%% To use this operation, you must have permission to perform the
%% `s3:GetBucketCORS' action. By default, the bucket owner has this
%% permission and can grant it to others.
%%
%% To use this API operation against an access point, provide the alias of
%% the access point in place of the bucket name.
%%
%% To use this API operation against an Object Lambda access point, provide
%% the alias of the Object Lambda access point in place of the bucket name.
%% If the Object Lambda access point alias in a request is not valid, the
%% error code `InvalidAccessPointAliasError' is returned. For more
%% information about `InvalidAccessPointAliasError', see List of Error
%% Codes.
%%
%% For more information about CORS, see Enabling Cross-Origin Resource
%% Sharing.
%%
%% The following operations are related to `GetBucketCors':
%%
%% <ul> <li> PutBucketCors
%%
%% </li> <li> DeleteBucketCors
%%
%% </li> </ul>
get_bucket_cors(Client, Bucket)
  when is_map(Client) ->
    get_bucket_cors(Client, Bucket, #{}, #{}).

get_bucket_cors(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_cors(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_cors(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?cors"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the default encryption configuration for an Amazon S3 bucket.
%%
%% By default, all buckets have a default encryption configuration that uses
%% server-side encryption with Amazon S3 managed keys (SSE-S3). For
%% information about the bucket default encryption feature, see Amazon S3
%% Bucket Default Encryption in the Amazon S3 User Guide.
%%
%% To use this operation, you must have permission to perform the
%% `s3:GetEncryptionConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% The following operations are related to `GetBucketEncryption':
%%
%% <ul> <li> PutBucketEncryption
%%
%% </li> <li> DeleteBucketEncryption
%%
%% </li> </ul>
get_bucket_encryption(Client, Bucket)
  when is_map(Client) ->
    get_bucket_encryption(Client, Bucket, #{}, #{}).

get_bucket_encryption(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_encryption(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_encryption(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?encryption"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Gets the S3 Intelligent-Tiering configuration from the specified
%% bucket.
%%
%% The S3 Intelligent-Tiering storage class is designed to optimize storage
%% costs by automatically moving data to the most cost-effective storage
%% access tier, without performance impact or operational overhead. S3
%% Intelligent-Tiering delivers automatic cost savings in three low latency
%% and high throughput access tiers. To get the lowest storage cost on data
%% that can be accessed in minutes to hours, you can choose to activate
%% additional archiving capabilities.
%%
%% The S3 Intelligent-Tiering storage class is the ideal storage class for
%% data with unknown, changing, or unpredictable access patterns, independent
%% of object size or retention period. If the size of an object is less than
%% 128 KB, it is not monitored and not eligible for auto-tiering. Smaller
%% objects can be stored, but they are always charged at the Frequent Access
%% tier rates in the S3 Intelligent-Tiering storage class.
%%
%% For more information, see Storage class for automatically optimizing
%% frequently and infrequently accessed objects.
%%
%% Operations related to `GetBucketIntelligentTieringConfiguration'
%% include:
%%
%% <ul> <li> DeleteBucketIntelligentTieringConfiguration
%%
%% </li> <li> PutBucketIntelligentTieringConfiguration
%%
%% </li> <li> ListBucketIntelligentTieringConfigurations
%%
%% </li> </ul>
get_bucket_intelligent_tiering_configuration(Client, Bucket, Id)
  when is_map(Client) ->
    get_bucket_intelligent_tiering_configuration(Client, Bucket, Id, #{}, #{}).

get_bucket_intelligent_tiering_configuration(Client, Bucket, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_intelligent_tiering_configuration(Client, Bucket, Id, QueryMap, HeadersMap, []).

get_bucket_intelligent_tiering_configuration(Client, Bucket, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?intelligent-tiering"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns an inventory configuration (identified by the inventory
%% configuration ID) from the bucket.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:GetInventoryConfiguration' action. The bucket owner has this
%% permission by default and can grant this permission to others. For more
%% information about permissions, see Permissions Related to Bucket
%% Subresource Operations and Managing Access Permissions to Your Amazon S3
%% Resources.
%%
%% For information about the Amazon S3 inventory feature, see Amazon S3
%% Inventory.
%%
%% The following operations are related to
%% `GetBucketInventoryConfiguration':
%%
%% <ul> <li> DeleteBucketInventoryConfiguration
%%
%% </li> <li> ListBucketInventoryConfigurations
%%
%% </li> <li> PutBucketInventoryConfiguration
%%
%% </li> </ul>
get_bucket_inventory_configuration(Client, Bucket, Id)
  when is_map(Client) ->
    get_bucket_inventory_configuration(Client, Bucket, Id, #{}, #{}).

get_bucket_inventory_configuration(Client, Bucket, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_inventory_configuration(Client, Bucket, Id, QueryMap, HeadersMap, []).

get_bucket_inventory_configuration(Client, Bucket, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?inventory"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc For an updated version of this API, see
%% GetBucketLifecycleConfiguration.
%%
%% If you configured a bucket lifecycle using the `filter' element, you
%% should see the updated version of this topic. This topic is provided for
%% backward compatibility.
%%
%% Returns the lifecycle configuration information set on the bucket. For
%% information about lifecycle configuration, see Object Lifecycle
%% Management.
%%
%% To use this operation, you must have permission to perform the
%% `s3:GetLifecycleConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% `GetBucketLifecycle' has the following special error:
%%
%% <ul> <li> Error code: `NoSuchLifecycleConfiguration'
%%
%% <ul> <li> Description: The lifecycle configuration does not exist.
%%
%% </li> <li> HTTP Status Code: 404 Not Found
%%
%% </li> <li> SOAP Fault Code Prefix: Client
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% `GetBucketLifecycle':
%%
%% <ul> <li> GetBucketLifecycleConfiguration
%%
%% </li> <li> PutBucketLifecycle
%%
%% </li> <li> DeleteBucketLifecycle
%%
%% </li> </ul>
get_bucket_lifecycle(Client, Bucket)
  when is_map(Client) ->
    get_bucket_lifecycle(Client, Bucket, #{}, #{}).

get_bucket_lifecycle(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_lifecycle(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_lifecycle(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?lifecycle"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Bucket lifecycle configuration now supports specifying a lifecycle
%% rule using an object key name prefix, one or more object tags, or a
%% combination of both.
%%
%% Accordingly, this section describes the latest API. The response describes
%% the new filter element that you can use to specify a filter to select a
%% subset of objects to which the rule applies. If you are using a previous
%% version of the lifecycle configuration, it still works. For the earlier
%% action, see GetBucketLifecycle.
%%
%% Returns the lifecycle configuration information set on the bucket. For
%% information about lifecycle configuration, see Object Lifecycle
%% Management.
%%
%% To use this operation, you must have permission to perform the
%% `s3:GetLifecycleConfiguration' action. The bucket owner has this
%% permission, by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% `GetBucketLifecycleConfiguration' has the following special error:
%%
%% <ul> <li> Error code: `NoSuchLifecycleConfiguration'
%%
%% <ul> <li> Description: The lifecycle configuration does not exist.
%%
%% </li> <li> HTTP Status Code: 404 Not Found
%%
%% </li> <li> SOAP Fault Code Prefix: Client
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% `GetBucketLifecycleConfiguration':
%%
%% <ul> <li> GetBucketLifecycle
%%
%% </li> <li> PutBucketLifecycle
%%
%% </li> <li> DeleteBucketLifecycle
%%
%% </li> </ul>
get_bucket_lifecycle_configuration(Client, Bucket)
  when is_map(Client) ->
    get_bucket_lifecycle_configuration(Client, Bucket, #{}, #{}).

get_bucket_lifecycle_configuration(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_lifecycle_configuration(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_lifecycle_configuration(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?lifecycle"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the Region the bucket resides in.
%%
%% You set the bucket's Region using the `LocationConstraint' request
%% parameter in a `CreateBucket' request. For more information, see
%% CreateBucket.
%%
%% To use this API operation against an access point, provide the alias of
%% the access point in place of the bucket name.
%%
%% To use this API operation against an Object Lambda access point, provide
%% the alias of the Object Lambda access point in place of the bucket name.
%% If the Object Lambda access point alias in a request is not valid, the
%% error code `InvalidAccessPointAliasError' is returned. For more
%% information about `InvalidAccessPointAliasError', see List of Error
%% Codes.
%%
%% We recommend that you use HeadBucket to return the Region that a bucket
%% resides in. For backward compatibility, Amazon S3 continues to support
%% GetBucketLocation.
%%
%% The following operations are related to `GetBucketLocation':
%%
%% <ul> <li> GetObject
%%
%% </li> <li> CreateBucket
%%
%% </li> </ul>
get_bucket_location(Client, Bucket)
  when is_map(Client) ->
    get_bucket_location(Client, Bucket, #{}, #{}).

get_bucket_location(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_location(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_location(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?location"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the logging status of a bucket and the permissions users have
%% to view and modify that status.
%%
%% The following operations are related to `GetBucketLogging':
%%
%% <ul> <li> CreateBucket
%%
%% </li> <li> PutBucketLogging
%%
%% </li> </ul>
get_bucket_logging(Client, Bucket)
  when is_map(Client) ->
    get_bucket_logging(Client, Bucket, #{}, #{}).

get_bucket_logging(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_logging(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_logging(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?logging"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Gets a metrics configuration (specified by the metrics configuration
%% ID) from the bucket.
%%
%% Note that this doesn't include the daily storage metrics.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:GetMetricsConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% For information about CloudWatch request metrics for Amazon S3, see
%% Monitoring Metrics with Amazon CloudWatch.
%%
%% The following operations are related to
%% `GetBucketMetricsConfiguration':
%%
%% <ul> <li> PutBucketMetricsConfiguration
%%
%% </li> <li> DeleteBucketMetricsConfiguration
%%
%% </li> <li> ListBucketMetricsConfigurations
%%
%% </li> <li> Monitoring Metrics with Amazon CloudWatch
%%
%% </li> </ul>
get_bucket_metrics_configuration(Client, Bucket, Id)
  when is_map(Client) ->
    get_bucket_metrics_configuration(Client, Bucket, Id, #{}, #{}).

get_bucket_metrics_configuration(Client, Bucket, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_metrics_configuration(Client, Bucket, Id, QueryMap, HeadersMap, []).

get_bucket_metrics_configuration(Client, Bucket, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?metrics"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"id">>, Id}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc No longer used, see GetBucketNotificationConfiguration.
get_bucket_notification(Client, Bucket)
  when is_map(Client) ->
    get_bucket_notification(Client, Bucket, #{}, #{}).

get_bucket_notification(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_notification(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_notification(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?notification"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the notification configuration of a bucket.
%%
%% If notifications are not enabled on the bucket, the action returns an
%% empty `NotificationConfiguration' element.
%%
%% By default, you must be the bucket owner to read the notification
%% configuration of a bucket. However, the bucket owner can use a bucket
%% policy to grant permission to other users to read this configuration with
%% the `s3:GetBucketNotification' permission.
%%
%% To use this API operation against an access point, provide the alias of
%% the access point in place of the bucket name.
%%
%% To use this API operation against an Object Lambda access point, provide
%% the alias of the Object Lambda access point in place of the bucket name.
%% If the Object Lambda access point alias in a request is not valid, the
%% error code `InvalidAccessPointAliasError' is returned. For more
%% information about `InvalidAccessPointAliasError', see List of Error
%% Codes.
%%
%% For more information about setting and reading the notification
%% configuration on a bucket, see Setting Up Notification of Bucket Events.
%% For more information about bucket policies, see Using Bucket Policies.
%%
%% The following action is related to `GetBucketNotification':
%%
%% <ul> <li> PutBucketNotification
%%
%% </li> </ul>
get_bucket_notification_configuration(Client, Bucket)
  when is_map(Client) ->
    get_bucket_notification_configuration(Client, Bucket, #{}, #{}).

get_bucket_notification_configuration(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_notification_configuration(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_notification_configuration(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?notification"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Retrieves `OwnershipControls' for an Amazon S3 bucket.
%%
%% To use this operation, you must have the
%% `s3:GetBucketOwnershipControls' permission. For more information about
%% Amazon S3 permissions, see Specifying permissions in a policy.
%%
%% For information about Amazon S3 Object Ownership, see Using Object
%% Ownership.
%%
%% The following operations are related to `GetBucketOwnershipControls':
%%
%% <ul> <li> `PutBucketOwnershipControls'
%%
%% </li> <li> `DeleteBucketOwnershipControls'
%%
%% </li> </ul>
get_bucket_ownership_controls(Client, Bucket)
  when is_map(Client) ->
    get_bucket_ownership_controls(Client, Bucket, #{}, #{}).

get_bucket_ownership_controls(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_ownership_controls(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_ownership_controls(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?ownershipControls"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the policy of a specified bucket.
%%
%% If you are using an identity other than the root user of the Amazon Web
%% Services account that owns the bucket, the calling identity must have the
%% `GetBucketPolicy' permissions on the specified bucket and belong to
%% the bucket owner's account in order to use this operation.
%%
%% If you don't have `GetBucketPolicy' permissions, Amazon S3 returns
%% a `403 Access Denied' error. If you have the correct permissions, but
%% you're not using an identity that belongs to the bucket owner's
%% account, Amazon S3 returns a `405 Method Not Allowed' error.
%%
%% To ensure that bucket owners don't inadvertently lock themselves out
%% of their own buckets, the root principal in a bucket owner's Amazon
%% Web Services account can perform the `GetBucketPolicy',
%% `PutBucketPolicy', and `DeleteBucketPolicy' API actions, even if
%% their bucket policy explicitly denies the root principal's access.
%% Bucket owner root principals can only be blocked from performing these API
%% actions by VPC endpoint policies and Amazon Web Services Organizations
%% policies.
%%
%% To use this API operation against an access point, provide the alias of
%% the access point in place of the bucket name.
%%
%% To use this API operation against an Object Lambda access point, provide
%% the alias of the Object Lambda access point in place of the bucket name.
%% If the Object Lambda access point alias in a request is not valid, the
%% error code `InvalidAccessPointAliasError' is returned. For more
%% information about `InvalidAccessPointAliasError', see List of Error
%% Codes.
%%
%% For more information about bucket policies, see Using Bucket Policies and
%% User Policies.
%%
%% The following action is related to `GetBucketPolicy':
%%
%% <ul> <li> GetObject
%%
%% </li> </ul>
get_bucket_policy(Client, Bucket)
  when is_map(Client) ->
    get_bucket_policy(Client, Bucket, #{}, #{}).

get_bucket_policy(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_policy(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_policy(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?policy"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Retrieves the policy status for an Amazon S3 bucket, indicating
%% whether the bucket is public.
%%
%% In order to use this operation, you must have the
%% `s3:GetBucketPolicyStatus' permission. For more information about
%% Amazon S3 permissions, see Specifying Permissions in a Policy.
%%
%% For more information about when Amazon S3 considers a bucket public, see
%% The Meaning of &quot;Public&quot;.
%%
%% The following operations are related to `GetBucketPolicyStatus':
%%
%% <ul> <li> Using Amazon S3 Block Public Access
%%
%% </li> <li> GetPublicAccessBlock
%%
%% </li> <li> PutPublicAccessBlock
%%
%% </li> <li> DeletePublicAccessBlock
%%
%% </li> </ul>
get_bucket_policy_status(Client, Bucket)
  when is_map(Client) ->
    get_bucket_policy_status(Client, Bucket, #{}, #{}).

get_bucket_policy_status(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_policy_status(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_policy_status(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?policyStatus"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the replication configuration of a bucket.
%%
%% It can take a while to propagate the put or delete a replication
%% configuration to all Amazon S3 systems. Therefore, a get request soon
%% after put or delete can return a wrong result.
%%
%% For information about replication configuration, see Replication in the
%% Amazon S3 User Guide.
%%
%% This action requires permissions for the
%% `s3:GetReplicationConfiguration' action. For more information about
%% permissions, see Using Bucket Policies and User Policies.
%%
%% If you include the `Filter' element in a replication configuration,
%% you must also include the `DeleteMarkerReplication' and `Priority'
%% elements. The response also returns those elements.
%%
%% For information about `GetBucketReplication' errors, see List of
%% replication-related error codes
%%
%% The following operations are related to `GetBucketReplication':
%%
%% <ul> <li> PutBucketReplication
%%
%% </li> <li> DeleteBucketReplication
%%
%% </li> </ul>
get_bucket_replication(Client, Bucket)
  when is_map(Client) ->
    get_bucket_replication(Client, Bucket, #{}, #{}).

get_bucket_replication(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_replication(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_replication(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?replication"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the request payment configuration of a bucket.
%%
%% To use this version of the operation, you must be the bucket owner. For
%% more information, see Requester Pays Buckets.
%%
%% The following operations are related to `GetBucketRequestPayment':
%%
%% <ul> <li> ListObjects
%%
%% </li> </ul>
get_bucket_request_payment(Client, Bucket)
  when is_map(Client) ->
    get_bucket_request_payment(Client, Bucket, #{}, #{}).

get_bucket_request_payment(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_request_payment(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_request_payment(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?requestPayment"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the tag set associated with the bucket.
%%
%% To use this operation, you must have permission to perform the
%% `s3:GetBucketTagging' action. By default, the bucket owner has this
%% permission and can grant this permission to others.
%%
%% `GetBucketTagging' has the following special error:
%%
%% <ul> <li> Error code: `NoSuchTagSet'
%%
%% <ul> <li> Description: There is no tag set associated with the bucket.
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% `GetBucketTagging':
%%
%% <ul> <li> PutBucketTagging
%%
%% </li> <li> DeleteBucketTagging
%%
%% </li> </ul>
get_bucket_tagging(Client, Bucket)
  when is_map(Client) ->
    get_bucket_tagging(Client, Bucket, #{}, #{}).

get_bucket_tagging(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_tagging(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_tagging(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?tagging"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the versioning state of a bucket.
%%
%% To retrieve the versioning state of a bucket, you must be the bucket
%% owner.
%%
%% This implementation also returns the MFA Delete status of the versioning
%% state. If the MFA Delete status is `enabled', the bucket owner must
%% use an authentication device to change the versioning state of the bucket.
%%
%% The following operations are related to `GetBucketVersioning':
%%
%% <ul> <li> GetObject
%%
%% </li> <li> PutObject
%%
%% </li> <li> DeleteObject
%%
%% </li> </ul>
get_bucket_versioning(Client, Bucket)
  when is_map(Client) ->
    get_bucket_versioning(Client, Bucket, #{}, #{}).

get_bucket_versioning(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_versioning(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_versioning(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?versioning"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the website configuration for a bucket.
%%
%% To host website on Amazon S3, you can configure a bucket as website by
%% adding a website configuration. For more information about hosting
%% websites, see Hosting Websites on Amazon S3.
%%
%% This GET action requires the `S3:GetBucketWebsite' permission. By
%% default, only the bucket owner can read the bucket website configuration.
%% However, bucket owners can allow other users to read the website
%% configuration by writing a bucket policy granting them the
%% `S3:GetBucketWebsite' permission.
%%
%% The following operations are related to `GetBucketWebsite':
%%
%% <ul> <li> DeleteBucketWebsite
%%
%% </li> <li> PutBucketWebsite
%%
%% </li> </ul>
get_bucket_website(Client, Bucket)
  when is_map(Client) ->
    get_bucket_website(Client, Bucket, #{}, #{}).

get_bucket_website(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bucket_website(Client, Bucket, QueryMap, HeadersMap, []).

get_bucket_website(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?website"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Retrieves objects from Amazon S3.
%%
%% To use `GET', you must have `READ' access to the object. If you
%% grant `READ' access to the anonymous user, you can return the object
%% without using an authorization header.
%%
%% An Amazon S3 bucket has no directory hierarchy such as you would find in a
%% typical computer file system. You can, however, create a logical hierarchy
%% by using object key names that imply a folder structure. For example,
%% instead of naming an object `sample.jpg', you can name it
%% `photos/2006/February/sample.jpg'.
%%
%% To get an object from such a logical hierarchy, specify the full key name
%% for the object in the `GET' operation. For a virtual hosted-style
%% request example, if you have the object
%% `photos/2006/February/sample.jpg', specify the resource as
%% `/photos/2006/February/sample.jpg'. For a path-style request example,
%% if you have the object `photos/2006/February/sample.jpg' in the bucket
%% named `examplebucket', specify the resource as
%% `/examplebucket/photos/2006/February/sample.jpg'. For more information
%% about request types, see HTTP Host Header Bucket Specification.
%%
%% For more information about returning the ACL of an object, see
%% GetObjectAcl.
%%
%% If the object you are retrieving is stored in the S3 Glacier Flexible
%% Retrieval or S3 Glacier Deep Archive storage class, or S3
%% Intelligent-Tiering Archive or S3 Intelligent-Tiering Deep Archive tiers,
%% before you can retrieve the object you must first restore a copy using
%% RestoreObject. Otherwise, this action returns an `InvalidObjectState'
%% error. For information about restoring archived objects, see Restoring
%% Archived Objects.
%%
%% Encryption request headers, like `x-amz-server-side-encryption',
%% should not be sent for GET requests if your object uses server-side
%% encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer
%% server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or
%% server-side encryption with Amazon S3 managed encryption keys (SSE-S3). If
%% your object does use these types of keys, you’ll get an HTTP 400 Bad
%% Request error.
%%
%% If you encrypt an object by using server-side encryption with
%% customer-provided encryption keys (SSE-C) when you store the object in
%% Amazon S3, then when you GET the object, you must use the following
%% headers:
%%
%% <ul> <li> `x-amz-server-side-encryption-customer-algorithm'
%%
%% </li> <li> `x-amz-server-side-encryption-customer-key'
%%
%% </li> <li> `x-amz-server-side-encryption-customer-key-MD5'
%%
%% </li> </ul> For more information about SSE-C, see Server-Side Encryption
%% (Using Customer-Provided Encryption Keys).
%%
%% Assuming you have the relevant permission to read object tags, the
%% response also returns the `x-amz-tagging-count' header that provides
%% the count of number of tags associated with the object. You can use
%% GetObjectTagging to retrieve the tag set associated with an object.
%%
%% <dl> <dt>Permissions</dt> <dd> You need the relevant read object (or
%% version) permission for this operation. For more information, see
%% Specifying Permissions in a Policy. If the object that you request doesn’t
%% exist, the error that Amazon S3 returns depends on whether you also have
%% the `s3:ListBucket' permission.
%%
%% If you have the `s3:ListBucket' permission on the bucket, Amazon S3
%% returns an HTTP status code 404 (Not Found) error.
%%
%% If you don’t have the `s3:ListBucket' permission, Amazon S3 returns an
%% HTTP status code 403 (&quot;access denied&quot;) error.
%%
%% </dd> <dt>Versioning</dt> <dd> By default, the `GET' action returns
%% the current version of an object. To return a different version, use the
%% `versionId' subresource.
%%
%% If you supply a `versionId', you need the `s3:GetObjectVersion'
%% permission to access a specific version of an object. If you request a
%% specific version, you do not need to have the `s3:GetObject'
%% permission. If you request the current version without a specific version
%% ID, only `s3:GetObject' permission is required.
%% `s3:GetObjectVersion' permission won't be required.
%%
%% If the current version of the object is a delete marker, Amazon S3 behaves
%% as if the object was deleted and includes `x-amz-delete-marker: true'
%% in the response.
%%
%% For more information about versioning, see PutBucketVersioning.
%%
%% </dd> <dt>Overriding Response Header Values</dt> <dd> There are times when
%% you want to override certain response header values in a `GET'
%% response. For example, you might override the `Content-Disposition'
%% response header value in your `GET' request.
%%
%% You can override values for a set of response headers using the following
%% query parameters. These response header values are sent only on a
%% successful request, that is, when status code 200 OK is returned. The set
%% of headers you can override using these parameters is a subset of the
%% headers that Amazon S3 accepts when you create an object. The response
%% headers that you can override for the `GET' response are
%% `Content-Type', `Content-Language', `Expires',
%% `Cache-Control', `Content-Disposition', and
%% `Content-Encoding'. To override these header values in the `GET'
%% response, you use the following request parameters.
%%
%% You must sign the request, either using an Authorization header or a
%% presigned URL, when using these parameters. They cannot be used with an
%% unsigned (anonymous) request.
%%
%% <ul> <li> `response-content-type'
%%
%% </li> <li> `response-content-language'
%%
%% </li> <li> `response-expires'
%%
%% </li> <li> `response-cache-control'
%%
%% </li> <li> `response-content-disposition'
%%
%% </li> <li> `response-content-encoding'
%%
%% </li> </ul> </dd> <dt>Overriding Response Header Values</dt> <dd> If both
%% of the `If-Match' and `If-Unmodified-Since' headers are present in
%% the request as follows: `If-Match' condition evaluates to `true',
%% and; `If-Unmodified-Since' condition evaluates to `false'; then,
%% S3 returns 200 OK and the data requested.
%%
%% If both of the `If-None-Match' and `If-Modified-Since' headers are
%% present in the request as follows:` If-None-Match' condition evaluates
%% to `false', and; `If-Modified-Since' condition evaluates to
%% `true'; then, S3 returns 304 Not Modified response code.
%%
%% For more information about conditional requests, see RFC 7232.
%%
%% </dd> </dl> The following operations are related to `GetObject':
%%
%% <ul> <li> ListBuckets
%%
%% </li> <li> GetObjectAcl
%%
%% </li> </ul>
get_object(Client, Bucket, Key)
  when is_map(Client) ->
    get_object(Client, Bucket, Key, #{}, #{}).

get_object(Client, Bucket, Key, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object(Client, Bucket, Key, QueryMap, HeadersMap, []).

get_object(Client, Bucket, Key, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, true}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-checksum-mode">>, maps:get(<<"x-amz-checksum-mode">>, HeadersMap, undefined)},
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"If-Match">>, maps:get(<<"If-Match">>, HeadersMap, undefined)},
        {<<"If-Modified-Since">>, maps:get(<<"If-Modified-Since">>, HeadersMap, undefined)},
        {<<"If-None-Match">>, maps:get(<<"If-None-Match">>, HeadersMap, undefined)},
        {<<"If-Unmodified-Since">>, maps:get(<<"If-Unmodified-Since">>, HeadersMap, undefined)},
        {<<"Range">>, maps:get(<<"Range">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)},
        {<<"x-amz-server-side-encryption-customer-algorithm">>, maps:get(<<"x-amz-server-side-encryption-customer-algorithm">>, HeadersMap, undefined)},
        {<<"x-amz-server-side-encryption-customer-key">>, maps:get(<<"x-amz-server-side-encryption-customer-key">>, HeadersMap, undefined)},
        {<<"x-amz-server-side-encryption-customer-key-MD5">>, maps:get(<<"x-amz-server-side-encryption-customer-key-MD5">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"partNumber">>, maps:get(<<"partNumber">>, QueryMap, undefined)},
        {<<"response-cache-control">>, maps:get(<<"response-cache-control">>, QueryMap, undefined)},
        {<<"response-content-disposition">>, maps:get(<<"response-content-disposition">>, QueryMap, undefined)},
        {<<"response-content-encoding">>, maps:get(<<"response-content-encoding">>, QueryMap, undefined)},
        {<<"response-content-language">>, maps:get(<<"response-content-language">>, QueryMap, undefined)},
        {<<"response-content-type">>, maps:get(<<"response-content-type">>, QueryMap, undefined)},
        {<<"response-expires">>, maps:get(<<"response-expires">>, QueryMap, undefined)},
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-checksum-crc32c">>, <<"ChecksumCRC32C">>},
            {<<"x-amz-delete-marker">>, <<"DeleteMarker">>},
            {<<"x-amz-object-lock-retain-until-date">>, <<"ObjectLockRetainUntilDate">>},
            {<<"x-amz-restore">>, <<"Restore">>},
            {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
            {<<"x-amz-object-lock-legal-hold">>, <<"ObjectLockLegalHoldStatus">>},
            {<<"x-amz-version-id">>, <<"VersionId">>},
            {<<"accept-ranges">>, <<"AcceptRanges">>},
            {<<"x-amz-website-redirect-location">>, <<"WebsiteRedirectLocation">>},
            {<<"Content-Language">>, <<"ContentLanguage">>},
            {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
            {<<"Content-Encoding">>, <<"ContentEncoding">>},
            {<<"x-amz-checksum-sha256">>, <<"ChecksumSHA256">>},
            {<<"ETag">>, <<"ETag">>},
            {<<"Last-Modified">>, <<"LastModified">>},
            {<<"Content-Range">>, <<"ContentRange">>},
            {<<"Expires">>, <<"Expires">>},
            {<<"x-amz-tagging-count">>, <<"TagCount">>},
            {<<"x-amz-expiration">>, <<"Expiration">>},
            {<<"x-amz-replication-status">>, <<"ReplicationStatus">>},
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"x-amz-storage-class">>, <<"StorageClass">>},
            {<<"x-amz-missing-meta">>, <<"MissingMeta">>},
            {<<"Content-Length">>, <<"ContentLength">>},
            {<<"x-amz-object-lock-mode">>, <<"ObjectLockMode">>},
            {<<"Content-Disposition">>, <<"ContentDisposition">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
            {<<"x-amz-mp-parts-count">>, <<"PartsCount">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-checksum-crc32">>, <<"ChecksumCRC32">>},
            {<<"x-amz-checksum-sha1">>, <<"ChecksumSHA1">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns the access control list (ACL) of an object.
%%
%% To use this operation, you must have `s3:GetObjectAcl' permissions or
%% `READ_ACP' access to the object. For more information, see Mapping of
%% ACL permissions and access policy permissions in the Amazon S3 User Guide
%%
%% This action is not supported by Amazon S3 on Outposts.
%%
%% By default, GET returns ACL information about the current version of an
%% object. To return ACL information about a different version, use the
%% versionId subresource.
%%
%% If your bucket uses the bucket owner enforced setting for S3 Object
%% Ownership, requests to read ACLs are still supported and return the
%% `bucket-owner-full-control' ACL with the owner being the account that
%% created the bucket. For more information, see Controlling object ownership
%% and disabling ACLs in the Amazon S3 User Guide.
%%
%% The following operations are related to `GetObjectAcl':
%%
%% <ul> <li> GetObject
%%
%% </li> <li> GetObjectAttributes
%%
%% </li> <li> DeleteObject
%%
%% </li> <li> PutObject
%%
%% </li> </ul>
get_object_acl(Client, Bucket, Key)
  when is_map(Client) ->
    get_object_acl(Client, Bucket, Key, #{}, #{}).

get_object_acl(Client, Bucket, Key, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object_acl(Client, Bucket, Key, QueryMap, HeadersMap, []).

get_object_acl(Client, Bucket, Key, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?acl"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Retrieves all the metadata from an object without returning the
%% object itself.
%%
%% This action is useful if you're interested only in an object's
%% metadata. To use `GetObjectAttributes', you must have READ access to
%% the object.
%%
%% `GetObjectAttributes' combines the functionality of `HeadObject'
%% and `ListParts'. All of the data returned with each of those
%% individual calls can be returned with a single call to
%% `GetObjectAttributes'.
%%
%% If you encrypt an object by using server-side encryption with
%% customer-provided encryption keys (SSE-C) when you store the object in
%% Amazon S3, then when you retrieve the metadata from the object, you must
%% use the following headers:
%%
%% <ul> <li> `x-amz-server-side-encryption-customer-algorithm'
%%
%% </li> <li> `x-amz-server-side-encryption-customer-key'
%%
%% </li> <li> `x-amz-server-side-encryption-customer-key-MD5'
%%
%% </li> </ul> For more information about SSE-C, see Server-Side Encryption
%% (Using Customer-Provided Encryption Keys) in the Amazon S3 User Guide.
%%
%% Encryption request headers, such as `x-amz-server-side-encryption',
%% should not be sent for GET requests if your object uses server-side
%% encryption with Amazon Web Services KMS keys stored in Amazon Web Services
%% Key Management Service (SSE-KMS) or server-side encryption with Amazon S3
%% managed keys (SSE-S3). If your object does use these types of keys,
%% you'll get an HTTP `400 Bad Request' error.
%%
%% The last modified property in this case is the creation date of the
%% object.
%%
%% Consider the following when using request headers:
%%
%% <ul> <li> If both of the `If-Match' and `If-Unmodified-Since'
%% headers are present in the request as follows, then Amazon S3 returns the
%% HTTP status code `200 OK' and the data requested:
%%
%% <ul> <li> `If-Match' condition evaluates to `true'.
%%
%% </li> <li> `If-Unmodified-Since' condition evaluates to `false'.
%%
%% </li> </ul> </li> <li> If both of the `If-None-Match' and
%% `If-Modified-Since' headers are present in the request as follows,
%% then Amazon S3 returns the HTTP status code `304 Not Modified':
%%
%% <ul> <li> `If-None-Match' condition evaluates to `false'.
%%
%% </li> <li> `If-Modified-Since' condition evaluates to `true'.
%%
%% </li> </ul> </li> </ul> For more information about conditional requests,
%% see RFC 7232.
%%
%% <dl> <dt>Permissions</dt> <dd> The permissions that you need to use this
%% operation depend on whether the bucket is versioned. If the bucket is
%% versioned, you need both the `s3:GetObjectVersion' and
%% `s3:GetObjectVersionAttributes' permissions for this operation. If the
%% bucket is not versioned, you need the `s3:GetObject' and
%% `s3:GetObjectAttributes' permissions. For more information, see
%% Specifying Permissions in a Policy in the Amazon S3 User Guide. If the
%% object that you request does not exist, the error Amazon S3 returns
%% depends on whether you also have the `s3:ListBucket' permission.
%%
%% <ul> <li> If you have the `s3:ListBucket' permission on the bucket,
%% Amazon S3 returns an HTTP status code `404 Not Found' (&quot;no such
%% key&quot;) error.
%%
%% </li> <li> If you don't have the `s3:ListBucket' permission,
%% Amazon S3 returns an HTTP status code `403 Forbidden' (&quot;access
%% denied&quot;) error.
%%
%% </li> </ul> </dd> </dl> The following actions are related to
%% `GetObjectAttributes':
%%
%% <ul> <li> GetObject
%%
%% </li> <li> GetObjectAcl
%%
%% </li> <li> GetObjectLegalHold
%%
%% </li> <li> GetObjectLockConfiguration
%%
%% </li> <li> GetObjectRetention
%%
%% </li> <li> GetObjectTagging
%%
%% </li> <li> HeadObject
%%
%% </li> <li> ListParts
%%
%% </li> </ul>
get_object_attributes(Client, Bucket, Key, ObjectAttributes)
  when is_map(Client) ->
    get_object_attributes(Client, Bucket, Key, ObjectAttributes, #{}, #{}).

get_object_attributes(Client, Bucket, Key, ObjectAttributes, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object_attributes(Client, Bucket, Key, ObjectAttributes, QueryMap, HeadersMap, []).

get_object_attributes(Client, Bucket, Key, ObjectAttributes, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?attributes"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-max-parts">>, maps:get(<<"x-amz-max-parts">>, HeadersMap, undefined)},
        {<<"x-amz-object-attributes">>, ObjectAttributes},
        {<<"x-amz-part-number-marker">>, maps:get(<<"x-amz-part-number-marker">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)},
        {<<"x-amz-server-side-encryption-customer-algorithm">>, maps:get(<<"x-amz-server-side-encryption-customer-algorithm">>, HeadersMap, undefined)},
        {<<"x-amz-server-side-encryption-customer-key">>, maps:get(<<"x-amz-server-side-encryption-customer-key">>, HeadersMap, undefined)},
        {<<"x-amz-server-side-encryption-customer-key-MD5">>, maps:get(<<"x-amz-server-side-encryption-customer-key-MD5">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-delete-marker">>, <<"DeleteMarker">>},
            {<<"Last-Modified">>, <<"LastModified">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-version-id">>, <<"VersionId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets an object's current legal hold status.
%%
%% For more information, see Locking Objects.
%%
%% This action is not supported by Amazon S3 on Outposts.
%%
%% The following action is related to `GetObjectLegalHold':
%%
%% <ul> <li> GetObjectAttributes
%%
%% </li> </ul>
get_object_legal_hold(Client, Bucket, Key)
  when is_map(Client) ->
    get_object_legal_hold(Client, Bucket, Key, #{}, #{}).

get_object_legal_hold(Client, Bucket, Key, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object_legal_hold(Client, Bucket, Key, QueryMap, HeadersMap, []).

get_object_legal_hold(Client, Bucket, Key, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?legal-hold"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Gets the Object Lock configuration for a bucket.
%%
%% The rule specified in the Object Lock configuration will be applied by
%% default to every new object placed in the specified bucket. For more
%% information, see Locking Objects.
%%
%% The following action is related to `GetObjectLockConfiguration':
%%
%% <ul> <li> GetObjectAttributes
%%
%% </li> </ul>
get_object_lock_configuration(Client, Bucket)
  when is_map(Client) ->
    get_object_lock_configuration(Client, Bucket, #{}, #{}).

get_object_lock_configuration(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object_lock_configuration(Client, Bucket, QueryMap, HeadersMap, []).

get_object_lock_configuration(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?object-lock"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Retrieves an object's retention settings.
%%
%% For more information, see Locking Objects.
%%
%% This action is not supported by Amazon S3 on Outposts.
%%
%% The following action is related to `GetObjectRetention':
%%
%% <ul> <li> GetObjectAttributes
%%
%% </li> </ul>
get_object_retention(Client, Bucket, Key)
  when is_map(Client) ->
    get_object_retention(Client, Bucket, Key, #{}, #{}).

get_object_retention(Client, Bucket, Key, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object_retention(Client, Bucket, Key, QueryMap, HeadersMap, []).

get_object_retention(Client, Bucket, Key, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?retention"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns the tag-set of an object.
%%
%% You send the GET request against the tagging subresource associated with
%% the object.
%%
%% To use this operation, you must have permission to perform the
%% `s3:GetObjectTagging' action. By default, the GET action returns
%% information about current version of an object. For a versioned bucket,
%% you can have multiple versions of an object in your bucket. To retrieve
%% tags of any other version, use the versionId query parameter. You also
%% need permission for the `s3:GetObjectVersionTagging' action.
%%
%% By default, the bucket owner has this permission and can grant this
%% permission to others.
%%
%% For information about the Amazon S3 object tagging feature, see Object
%% Tagging.
%%
%% The following actions are related to `GetObjectTagging':
%%
%% <ul> <li> DeleteObjectTagging
%%
%% </li> <li> GetObjectAttributes
%%
%% </li> <li> PutObjectTagging
%%
%% </li> </ul>
get_object_tagging(Client, Bucket, Key)
  when is_map(Client) ->
    get_object_tagging(Client, Bucket, Key, #{}, #{}).

get_object_tagging(Client, Bucket, Key, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object_tagging(Client, Bucket, Key, QueryMap, HeadersMap, []).

get_object_tagging(Client, Bucket, Key, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?tagging"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-version-id">>, <<"VersionId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns torrent files from a bucket.
%%
%% BitTorrent can save you bandwidth when you're distributing large
%% files.
%%
%% You can get torrent only for objects that are less than 5 GB in size, and
%% that are not encrypted using server-side encryption with a
%% customer-provided encryption key.
%%
%% To use GET, you must have READ access to the object.
%%
%% This action is not supported by Amazon S3 on Outposts.
%%
%% The following action is related to `GetObjectTorrent':
%%
%% <ul> <li> GetObject
%%
%% </li> </ul>
get_object_torrent(Client, Bucket, Key)
  when is_map(Client) ->
    get_object_torrent(Client, Bucket, Key, #{}, #{}).

get_object_torrent(Client, Bucket, Key, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_object_torrent(Client, Bucket, Key, QueryMap, HeadersMap, []).

get_object_torrent(Client, Bucket, Key, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?torrent"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, true}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Retrieves the `PublicAccessBlock' configuration for an Amazon S3
%% bucket.
%%
%% To use this operation, you must have the
%% `s3:GetBucketPublicAccessBlock' permission. For more information about
%% Amazon S3 permissions, see Specifying Permissions in a Policy.
%%
%% When Amazon S3 evaluates the `PublicAccessBlock' configuration for a
%% bucket or an object, it checks the `PublicAccessBlock' configuration
%% for both the bucket (or the bucket that contains the object) and the
%% bucket owner's account. If the `PublicAccessBlock' settings are
%% different between the bucket and the account, Amazon S3 uses the most
%% restrictive combination of the bucket-level and account-level settings.
%%
%% For more information about when Amazon S3 considers a bucket or an object
%% public, see The Meaning of &quot;Public&quot;.
%%
%% The following operations are related to `GetPublicAccessBlock':
%%
%% <ul> <li> Using Amazon S3 Block Public Access
%%
%% </li> <li> PutPublicAccessBlock
%%
%% </li> <li> GetPublicAccessBlock
%%
%% </li> <li> DeletePublicAccessBlock
%%
%% </li> </ul>
get_public_access_block(Client, Bucket)
  when is_map(Client) ->
    get_public_access_block(Client, Bucket, #{}, #{}).

get_public_access_block(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_public_access_block(Client, Bucket, QueryMap, HeadersMap, []).

get_public_access_block(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?publicAccessBlock"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc This action is useful to determine if a bucket exists and you have
%% permission to access it.
%%
%% The action returns a `200 OK' if the bucket exists and you have
%% permission to access it.
%%
%% If the bucket does not exist or you do not have permission to access it,
%% the `HEAD' request returns a generic `400 Bad Request', `403
%% Forbidden' or `404 Not Found' code. A message body is not
%% included, so you cannot determine the exception beyond these error codes.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:ListBucket' action. The bucket owner has this permission by
%% default and can grant this permission to others. For more information
%% about permissions, see Permissions Related to Bucket Subresource
%% Operations and Managing Access Permissions to Your Amazon S3 Resources.
%%
%% To use this API operation against an access point, you must provide the
%% alias of the access point in place of the bucket name or specify the
%% access point ARN. When using the access point ARN, you must direct
%% requests to the access point hostname. The access point hostname takes the
%% form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When
%% using the Amazon Web Services SDKs, you provide the ARN in place of the
%% bucket name. For more information, see Using access points.
%%
%% To use this API operation against an Object Lambda access point, provide
%% the alias of the Object Lambda access point in place of the bucket name.
%% If the Object Lambda access point alias in a request is not valid, the
%% error code `InvalidAccessPointAliasError' is returned. For more
%% information about `InvalidAccessPointAliasError', see List of Error
%% Codes.
head_bucket(Client, Bucket, Input) ->
    head_bucket(Client, Bucket, Input, []).
head_bucket(Client, Bucket, Input0, Options0) ->
    Method = head,
    Path = ["/", aws_util:encode_uri(Bucket), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc The `HEAD' action retrieves metadata from an object without
%% returning the object itself.
%%
%% This action is useful if you're only interested in an object's
%% metadata. To use `HEAD', you must have READ access to the object.
%%
%% A `HEAD' request has the same options as a `GET' action on an
%% object. The response is identical to the `GET' response except that
%% there is no response body. Because of this, if the `HEAD' request
%% generates an error, it returns a generic `400 Bad Request', `403
%% Forbidden' or `404 Not Found' code. It is not possible to retrieve
%% the exact exception beyond these error codes.
%%
%% If you encrypt an object by using server-side encryption with
%% customer-provided encryption keys (SSE-C) when you store the object in
%% Amazon S3, then when you retrieve the metadata from the object, you must
%% use the following headers:
%%
%% <ul> <li> `x-amz-server-side-encryption-customer-algorithm'
%%
%% </li> <li> `x-amz-server-side-encryption-customer-key'
%%
%% </li> <li> `x-amz-server-side-encryption-customer-key-MD5'
%%
%% </li> </ul> For more information about SSE-C, see Server-Side Encryption
%% (Using Customer-Provided Encryption Keys).
%%
%% Encryption request headers, like `x-amz-server-side-encryption',
%% should not be sent for `GET' requests if your object uses server-side
%% encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer
%% server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), or
%% server-side encryption with Amazon S3 managed encryption keys (SSE-S3). If
%% your object does use these types of keys, you’ll get an HTTP 400 Bad
%% Request error.
%%
%% The last modified property in this case is the creation date of the
%% object.
%%
%% Request headers are limited to 8 KB in size. For more information, see
%% Common Request Headers.
%%
%% Consider the following when using request headers:
%%
%% <ul> <li> Consideration 1 – If both of the `If-Match' and
%% `If-Unmodified-Since' headers are present in the request as follows:
%%
%% <ul> <li> `If-Match' condition evaluates to `true', and;
%%
%% </li> <li> `If-Unmodified-Since' condition evaluates to `false';
%%
%% </li> </ul> Then Amazon S3 returns `200 OK' and the data requested.
%%
%% </li> <li> Consideration 2 – If both of the `If-None-Match' and
%% `If-Modified-Since' headers are present in the request as follows:
%%
%% <ul> <li> `If-None-Match' condition evaluates to `false', and;
%%
%% </li> <li> `If-Modified-Since' condition evaluates to `true';
%%
%% </li> </ul> Then Amazon S3 returns the `304 Not Modified' response
%% code.
%%
%% </li> </ul> For more information about conditional requests, see RFC 7232.
%%
%% <dl> <dt>Permissions</dt> <dd> You need the relevant read object (or
%% version) permission for this operation. For more information, see Actions,
%% resources, and condition keys for Amazon S3. If the object you request
%% doesn't exist, the error that Amazon S3 returns depends on whether you
%% also have the s3:ListBucket permission.
%%
%% <ul> <li> If you have the `s3:ListBucket' permission on the bucket,
%% Amazon S3 returns an HTTP status code 404 error.
%%
%% </li> <li> If you don’t have the `s3:ListBucket' permission, Amazon S3
%% returns an HTTP status code 403 error.
%%
%% </li> </ul> </dd> </dl> The following actions are related to
%% `HeadObject':
%%
%% <ul> <li> GetObject
%%
%% </li> <li> GetObjectAttributes
%%
%% </li> </ul>
head_object(Client, Bucket, Key, Input) ->
    head_object(Client, Bucket, Key, Input, []).
head_object(Client, Bucket, Key, Input0, Options0) ->
    Method = head,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-checksum-mode">>, <<"ChecksumMode">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"If-Match">>, <<"IfMatch">>},
                       {<<"If-Modified-Since">>, <<"IfModifiedSince">>},
                       {<<"If-None-Match">>, <<"IfNoneMatch">>},
                       {<<"If-Unmodified-Since">>, <<"IfUnmodifiedSince">>},
                       {<<"Range">>, <<"Range">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"partNumber">>, <<"PartNumber">>},
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, {_, ResponseHeaders} = Response} ->
        Body0 = #{},
        ResponseHeadersParams =
          [
            {<<"x-amz-checksum-crc32c">>, <<"ChecksumCRC32C">>},
            {<<"x-amz-delete-marker">>, <<"DeleteMarker">>},
            {<<"x-amz-object-lock-retain-until-date">>, <<"ObjectLockRetainUntilDate">>},
            {<<"x-amz-restore">>, <<"Restore">>},
            {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
            {<<"x-amz-object-lock-legal-hold">>, <<"ObjectLockLegalHoldStatus">>},
            {<<"x-amz-version-id">>, <<"VersionId">>},
            {<<"accept-ranges">>, <<"AcceptRanges">>},
            {<<"x-amz-website-redirect-location">>, <<"WebsiteRedirectLocation">>},
            {<<"Content-Language">>, <<"ContentLanguage">>},
            {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
            {<<"Content-Encoding">>, <<"ContentEncoding">>},
            {<<"x-amz-checksum-sha256">>, <<"ChecksumSHA256">>},
            {<<"ETag">>, <<"ETag">>},
            {<<"x-amz-archive-status">>, <<"ArchiveStatus">>},
            {<<"Last-Modified">>, <<"LastModified">>},
            {<<"Expires">>, <<"Expires">>},
            {<<"x-amz-expiration">>, <<"Expiration">>},
            {<<"x-amz-replication-status">>, <<"ReplicationStatus">>},
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"x-amz-storage-class">>, <<"StorageClass">>},
            {<<"x-amz-missing-meta">>, <<"MissingMeta">>},
            {<<"Content-Length">>, <<"ContentLength">>},
            {<<"x-amz-object-lock-mode">>, <<"ObjectLockMode">>},
            {<<"Content-Disposition">>, <<"ContentDisposition">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
            {<<"x-amz-mp-parts-count">>, <<"PartsCount">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-checksum-crc32">>, <<"ChecksumCRC32">>},
            {<<"x-amz-checksum-sha1">>, <<"ChecksumSHA1">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Lists the analytics configurations for the bucket.
%%
%% You can have up to 1,000 analytics configurations per bucket.
%%
%% This action supports list pagination and does not return more than 100
%% configurations at a time. You should always check the `IsTruncated'
%% element in the response. If there are no more configurations to list,
%% `IsTruncated' is set to false. If there are more configurations to
%% list, `IsTruncated' is set to true, and there will be a value in
%% `NextContinuationToken'. You use the `NextContinuationToken' value
%% to continue the pagination of the list by passing the value in
%% continuation-token in the request to `GET' the next page.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:GetAnalyticsConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% For information about Amazon S3 analytics feature, see Amazon S3 Analytics
%% – Storage Class Analysis.
%%
%% The following operations are related to
%% `ListBucketAnalyticsConfigurations':
%%
%% <ul> <li> GetBucketAnalyticsConfiguration
%%
%% </li> <li> DeleteBucketAnalyticsConfiguration
%%
%% </li> <li> PutBucketAnalyticsConfiguration
%%
%% </li> </ul>
list_bucket_analytics_configurations(Client, Bucket)
  when is_map(Client) ->
    list_bucket_analytics_configurations(Client, Bucket, #{}, #{}).

list_bucket_analytics_configurations(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bucket_analytics_configurations(Client, Bucket, QueryMap, HeadersMap, []).

list_bucket_analytics_configurations(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?analytics"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"continuation-token">>, maps:get(<<"continuation-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Lists the S3 Intelligent-Tiering configuration from the specified
%% bucket.
%%
%% The S3 Intelligent-Tiering storage class is designed to optimize storage
%% costs by automatically moving data to the most cost-effective storage
%% access tier, without performance impact or operational overhead. S3
%% Intelligent-Tiering delivers automatic cost savings in three low latency
%% and high throughput access tiers. To get the lowest storage cost on data
%% that can be accessed in minutes to hours, you can choose to activate
%% additional archiving capabilities.
%%
%% The S3 Intelligent-Tiering storage class is the ideal storage class for
%% data with unknown, changing, or unpredictable access patterns, independent
%% of object size or retention period. If the size of an object is less than
%% 128 KB, it is not monitored and not eligible for auto-tiering. Smaller
%% objects can be stored, but they are always charged at the Frequent Access
%% tier rates in the S3 Intelligent-Tiering storage class.
%%
%% For more information, see Storage class for automatically optimizing
%% frequently and infrequently accessed objects.
%%
%% Operations related to `ListBucketIntelligentTieringConfigurations'
%% include:
%%
%% <ul> <li> DeleteBucketIntelligentTieringConfiguration
%%
%% </li> <li> PutBucketIntelligentTieringConfiguration
%%
%% </li> <li> GetBucketIntelligentTieringConfiguration
%%
%% </li> </ul>
list_bucket_intelligent_tiering_configurations(Client, Bucket)
  when is_map(Client) ->
    list_bucket_intelligent_tiering_configurations(Client, Bucket, #{}, #{}).

list_bucket_intelligent_tiering_configurations(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bucket_intelligent_tiering_configurations(Client, Bucket, QueryMap, HeadersMap, []).

list_bucket_intelligent_tiering_configurations(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?intelligent-tiering"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"continuation-token">>, maps:get(<<"continuation-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns a list of inventory configurations for the bucket.
%%
%% You can have up to 1,000 analytics configurations per bucket.
%%
%% This action supports list pagination and does not return more than 100
%% configurations at a time. Always check the `IsTruncated' element in
%% the response. If there are no more configurations to list,
%% `IsTruncated' is set to false. If there are more configurations to
%% list, `IsTruncated' is set to true, and there is a value in
%% `NextContinuationToken'. You use the `NextContinuationToken' value
%% to continue the pagination of the list by passing the value in
%% continuation-token in the request to `GET' the next page.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:GetInventoryConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% For information about the Amazon S3 inventory feature, see Amazon S3
%% Inventory
%%
%% The following operations are related to
%% `ListBucketInventoryConfigurations':
%%
%% <ul> <li> GetBucketInventoryConfiguration
%%
%% </li> <li> DeleteBucketInventoryConfiguration
%%
%% </li> <li> PutBucketInventoryConfiguration
%%
%% </li> </ul>
list_bucket_inventory_configurations(Client, Bucket)
  when is_map(Client) ->
    list_bucket_inventory_configurations(Client, Bucket, #{}, #{}).

list_bucket_inventory_configurations(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bucket_inventory_configurations(Client, Bucket, QueryMap, HeadersMap, []).

list_bucket_inventory_configurations(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?inventory"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"continuation-token">>, maps:get(<<"continuation-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Lists the metrics configurations for the bucket.
%%
%% The metrics configurations are only for the request metrics of the bucket
%% and do not provide information on daily storage metrics. You can have up
%% to 1,000 configurations per bucket.
%%
%% This action supports list pagination and does not return more than 100
%% configurations at a time. Always check the `IsTruncated' element in
%% the response. If there are no more configurations to list,
%% `IsTruncated' is set to false. If there are more configurations to
%% list, `IsTruncated' is set to true, and there is a value in
%% `NextContinuationToken'. You use the `NextContinuationToken' value
%% to continue the pagination of the list by passing the value in
%% `continuation-token' in the request to `GET' the next page.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:GetMetricsConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% For more information about metrics configurations and CloudWatch request
%% metrics, see Monitoring Metrics with Amazon CloudWatch.
%%
%% The following operations are related to
%% `ListBucketMetricsConfigurations':
%%
%% <ul> <li> PutBucketMetricsConfiguration
%%
%% </li> <li> GetBucketMetricsConfiguration
%%
%% </li> <li> DeleteBucketMetricsConfiguration
%%
%% </li> </ul>
list_bucket_metrics_configurations(Client, Bucket)
  when is_map(Client) ->
    list_bucket_metrics_configurations(Client, Bucket, #{}, #{}).

list_bucket_metrics_configurations(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bucket_metrics_configurations(Client, Bucket, QueryMap, HeadersMap, []).

list_bucket_metrics_configurations(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?metrics"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"continuation-token">>, maps:get(<<"continuation-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc Returns a list of all buckets owned by the authenticated sender of
%% the request.
%%
%% To use this operation, you must have the `s3:ListAllMyBuckets'
%% permission.
%%
%% For information about Amazon S3 buckets, see Creating, configuring, and
%% working with Amazon S3 buckets.
list_buckets(Client)
  when is_map(Client) ->
    list_buckets(Client, #{}, #{}).

list_buckets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_buckets(Client, QueryMap, HeadersMap, []).

list_buckets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/"],
    Bucket = undefined,
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket).

%% @doc This action lists in-progress multipart uploads.
%%
%% An in-progress multipart upload is a multipart upload that has been
%% initiated using the Initiate Multipart Upload request, but has not yet
%% been completed or aborted.
%%
%% This action returns at most 1,000 multipart uploads in the response. 1,000
%% multipart uploads is the maximum number of uploads a response can include,
%% which is also the default value. You can further limit the number of
%% uploads in a response by specifying the `max-uploads' parameter in the
%% response. If additional multipart uploads satisfy the list criteria, the
%% response will contain an `IsTruncated' element with the value true. To
%% list the additional multipart uploads, use the `key-marker' and
%% `upload-id-marker' request parameters.
%%
%% In the response, the uploads are sorted by key. If your application has
%% initiated more than one multipart upload using the same object key, then
%% uploads in the response are first sorted by key. Additionally, uploads are
%% sorted in ascending order within each key by the upload initiation time.
%%
%% For more information on multipart uploads, see Uploading Objects Using
%% Multipart Upload.
%%
%% For information on permissions required to use the multipart upload API,
%% see Multipart Upload and Permissions.
%%
%% The following operations are related to `ListMultipartUploads':
%%
%% <ul> <li> CreateMultipartUpload
%%
%% </li> <li> UploadPart
%%
%% </li> <li> CompleteMultipartUpload
%%
%% </li> <li> ListParts
%%
%% </li> <li> AbortMultipartUpload
%%
%% </li> </ul>
list_multipart_uploads(Client, Bucket)
  when is_map(Client) ->
    list_multipart_uploads(Client, Bucket, #{}, #{}).

list_multipart_uploads(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multipart_uploads(Client, Bucket, QueryMap, HeadersMap, []).

list_multipart_uploads(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?uploads"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"delimiter">>, maps:get(<<"delimiter">>, QueryMap, undefined)},
        {<<"encoding-type">>, maps:get(<<"encoding-type">>, QueryMap, undefined)},
        {<<"key-marker">>, maps:get(<<"key-marker">>, QueryMap, undefined)},
        {<<"max-uploads">>, maps:get(<<"max-uploads">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)},
        {<<"upload-id-marker">>, maps:get(<<"upload-id-marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns metadata about all versions of the objects in a bucket.
%%
%% You can also use request parameters as selection criteria to return
%% metadata about a subset of all the object versions.
%%
%% To use this operation, you must have permission to perform the
%% `s3:ListBucketVersions' action. Be aware of the name difference.
%%
%% A `200 OK' response can contain valid or invalid XML. Make sure to
%% design your application to parse the contents of the response and handle
%% it appropriately.
%%
%% To use this operation, you must have READ access to the bucket.
%%
%% This action is not supported by Amazon S3 on Outposts.
%%
%% The following operations are related to `ListObjectVersions':
%%
%% <ul> <li> ListObjectsV2
%%
%% </li> <li> GetObject
%%
%% </li> <li> PutObject
%%
%% </li> <li> DeleteObject
%%
%% </li> </ul>
list_object_versions(Client, Bucket)
  when is_map(Client) ->
    list_object_versions(Client, Bucket, #{}, #{}).

list_object_versions(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_object_versions(Client, Bucket, QueryMap, HeadersMap, []).

list_object_versions(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?versions"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-optional-object-attributes">>, maps:get(<<"x-amz-optional-object-attributes">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"delimiter">>, maps:get(<<"delimiter">>, QueryMap, undefined)},
        {<<"encoding-type">>, maps:get(<<"encoding-type">>, QueryMap, undefined)},
        {<<"key-marker">>, maps:get(<<"key-marker">>, QueryMap, undefined)},
        {<<"max-keys">>, maps:get(<<"max-keys">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)},
        {<<"version-id-marker">>, maps:get(<<"version-id-marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns some or all (up to 1,000) of the objects in a bucket.
%%
%% You can use the request parameters as selection criteria to return a
%% subset of the objects in a bucket. A 200 OK response can contain valid or
%% invalid XML. Be sure to design your application to parse the contents of
%% the response and handle it appropriately.
%%
%% This action has been revised. We recommend that you use the newer version,
%% ListObjectsV2, when developing applications. For backward compatibility,
%% Amazon S3 continues to support `ListObjects'.
%%
%% The following operations are related to `ListObjects':
%%
%% <ul> <li> ListObjectsV2
%%
%% </li> <li> GetObject
%%
%% </li> <li> PutObject
%%
%% </li> <li> CreateBucket
%%
%% </li> <li> ListBuckets
%%
%% </li> </ul>
list_objects(Client, Bucket)
  when is_map(Client) ->
    list_objects(Client, Bucket, #{}, #{}).

list_objects(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_objects(Client, Bucket, QueryMap, HeadersMap, []).

list_objects(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-optional-object-attributes">>, maps:get(<<"x-amz-optional-object-attributes">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"delimiter">>, maps:get(<<"delimiter">>, QueryMap, undefined)},
        {<<"encoding-type">>, maps:get(<<"encoding-type">>, QueryMap, undefined)},
        {<<"marker">>, maps:get(<<"marker">>, QueryMap, undefined)},
        {<<"max-keys">>, maps:get(<<"max-keys">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns some or all (up to 1,000) of the objects in a bucket with
%% each request.
%%
%% You can use the request parameters as selection criteria to return a
%% subset of the objects in a bucket. A `200 OK' response can contain
%% valid or invalid XML. Make sure to design your application to parse the
%% contents of the response and handle it appropriately. Objects are returned
%% sorted in an ascending order of the respective key names in the list. For
%% more information about listing objects, see Listing object keys
%% programmatically in the Amazon S3 User Guide.
%%
%% To use this operation, you must have READ access to the bucket.
%%
%% To use this action in an Identity and Access Management (IAM) policy, you
%% must have permission to perform the `s3:ListBucket' action. The bucket
%% owner has this permission by default and can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources in the Amazon S3 User Guide.
%%
%% This section describes the latest revision of this action. We recommend
%% that you use this revised API operation for application development. For
%% backward compatibility, Amazon S3 continues to support the prior version
%% of this API operation, ListObjects.
%%
%% To get a list of your buckets, see ListBuckets.
%%
%% The following operations are related to `ListObjectsV2':
%%
%% <ul> <li> GetObject
%%
%% </li> <li> PutObject
%%
%% </li> <li> CreateBucket
%%
%% </li> </ul>
list_objects_v2(Client, Bucket)
  when is_map(Client) ->
    list_objects_v2(Client, Bucket, #{}, #{}).

list_objects_v2(Client, Bucket, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_objects_v2(Client, Bucket, QueryMap, HeadersMap, []).

list_objects_v2(Client, Bucket, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "?list-type=2"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-optional-object-attributes">>, maps:get(<<"x-amz-optional-object-attributes">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"continuation-token">>, maps:get(<<"continuation-token">>, QueryMap, undefined)},
        {<<"delimiter">>, maps:get(<<"delimiter">>, QueryMap, undefined)},
        {<<"encoding-type">>, maps:get(<<"encoding-type">>, QueryMap, undefined)},
        {<<"fetch-owner">>, maps:get(<<"fetch-owner">>, QueryMap, undefined)},
        {<<"max-keys">>, maps:get(<<"max-keys">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)},
        {<<"start-after">>, maps:get(<<"start-after">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Lists the parts that have been uploaded for a specific multipart
%% upload.
%%
%% This operation must include the upload ID, which you obtain by sending the
%% initiate multipart upload request (see CreateMultipartUpload). This
%% request returns a maximum of 1,000 uploaded parts. The default number of
%% parts returned is 1,000 parts. You can restrict the number of parts
%% returned by specifying the `max-parts' request parameter. If your
%% multipart upload consists of more than 1,000 parts, the response returns
%% an `IsTruncated' field with the value of true, and a
%% `NextPartNumberMarker' element. In subsequent `ListParts' requests
%% you can include the part-number-marker query string parameter and set its
%% value to the `NextPartNumberMarker' field value from the previous
%% response.
%%
%% If the upload was created using a checksum algorithm, you will need to
%% have permission to the `kms:Decrypt' action for the request to
%% succeed.
%%
%% For more information on multipart uploads, see Uploading Objects Using
%% Multipart Upload.
%%
%% For information on permissions required to use the multipart upload API,
%% see Multipart Upload and Permissions.
%%
%% The following operations are related to `ListParts':
%%
%% <ul> <li> CreateMultipartUpload
%%
%% </li> <li> UploadPart
%%
%% </li> <li> CompleteMultipartUpload
%%
%% </li> <li> AbortMultipartUpload
%%
%% </li> <li> GetObjectAttributes
%%
%% </li> <li> ListMultipartUploads
%%
%% </li> </ul>
list_parts(Client, Bucket, Key, UploadId)
  when is_map(Client) ->
    list_parts(Client, Bucket, Key, UploadId, #{}, #{}).

list_parts(Client, Bucket, Key, UploadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_parts(Client, Bucket, Key, UploadId, QueryMap, HeadersMap, []).

list_parts(Client, Bucket, Key, UploadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"x-amz-expected-bucket-owner">>, maps:get(<<"x-amz-expected-bucket-owner">>, HeadersMap, undefined)},
        {<<"x-amz-request-payer">>, maps:get(<<"x-amz-request-payer">>, HeadersMap, undefined)},
        {<<"x-amz-server-side-encryption-customer-algorithm">>, maps:get(<<"x-amz-server-side-encryption-customer-algorithm">>, HeadersMap, undefined)},
        {<<"x-amz-server-side-encryption-customer-key">>, maps:get(<<"x-amz-server-side-encryption-customer-key">>, HeadersMap, undefined)},
        {<<"x-amz-server-side-encryption-customer-key-MD5">>, maps:get(<<"x-amz-server-side-encryption-customer-key-MD5">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"max-parts">>, maps:get(<<"max-parts">>, QueryMap, undefined)},
        {<<"part-number-marker">>, maps:get(<<"part-number-marker">>, QueryMap, undefined)},
        {<<"uploadId">>, UploadId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-abort-date">>, <<"AbortDate">>},
            {<<"x-amz-abort-rule-id">>, <<"AbortRuleId">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Sets the accelerate configuration of an existing bucket.
%%
%% Amazon S3 Transfer Acceleration is a bucket-level feature that enables you
%% to perform faster data transfers to Amazon S3.
%%
%% To use this operation, you must have permission to perform the
%% `s3:PutAccelerateConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% The Transfer Acceleration state of a bucket can be set to one of the
%% following two values:
%%
%% <ul> <li> Enabled – Enables accelerated data transfers to the bucket.
%%
%% </li> <li> Suspended – Disables accelerated data transfers to the bucket.
%%
%% </li> </ul> The GetBucketAccelerateConfiguration action returns the
%% transfer acceleration state of a bucket.
%%
%% After setting the Transfer Acceleration state of a bucket to Enabled, it
%% might take up to thirty minutes before the data transfer rates to the
%% bucket increase.
%%
%% The name of the bucket used for Transfer Acceleration must be
%% DNS-compliant and must not contain periods (&quot;.&quot;).
%%
%% For more information about transfer acceleration, see Transfer
%% Acceleration.
%%
%% The following operations are related to
%% `PutBucketAccelerateConfiguration':
%%
%% <ul> <li> GetBucketAccelerateConfiguration
%%
%% </li> <li> CreateBucket
%%
%% </li> </ul>
put_bucket_accelerate_configuration(Client, Bucket, Input) ->
    put_bucket_accelerate_configuration(Client, Bucket, Input, []).
put_bucket_accelerate_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?accelerate"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Sets the permissions on an existing bucket using access control lists
%% (ACL).
%%
%% For more information, see Using ACLs. To set the ACL of a bucket, you must
%% have `WRITE_ACP' permission.
%%
%% You can use one of the following two ways to set a bucket's
%% permissions:
%%
%% <ul> <li> Specify the ACL in the request body
%%
%% </li> <li> Specify permissions using request headers
%%
%% </li> </ul> You cannot specify access permission using both the body and
%% the request headers.
%%
%% Depending on your application needs, you may choose to set the ACL on a
%% bucket using either the request body or the headers. For example, if you
%% have an existing application that updates a bucket ACL using the request
%% body, then you can continue to use that approach.
%%
%% If your bucket uses the bucket owner enforced setting for S3 Object
%% Ownership, ACLs are disabled and no longer affect permissions. You must
%% use policies to grant access to your bucket and the objects in it.
%% Requests to set ACLs or update ACLs fail and return the
%% `AccessControlListNotSupported' error code. Requests to read ACLs are
%% still supported. For more information, see Controlling object ownership in
%% the Amazon S3 User Guide.
%%
%% <dl> <dt>Permissions</dt> <dd> You can set access permissions by using one
%% of the following methods:
%%
%% <ul> <li> Specify a canned ACL with the `x-amz-acl' request header.
%% Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each
%% canned ACL has a predefined set of grantees and permissions. Specify the
%% canned ACL name as the value of `x-amz-acl'. If you use this header,
%% you cannot use other access control-specific headers in your request. For
%% more information, see Canned ACL.
%%
%% </li> <li> Specify access permissions explicitly with the
%% `x-amz-grant-read', `x-amz-grant-read-acp',
%% `x-amz-grant-write-acp', and `x-amz-grant-full-control' headers.
%% When using these headers, you specify explicit access permissions and
%% grantees (Amazon Web Services accounts or Amazon S3 groups) who will
%% receive the permission. If you use these ACL-specific headers, you cannot
%% use the `x-amz-acl' header to set a canned ACL. These parameters map
%% to the set of permissions that Amazon S3 supports in an ACL. For more
%% information, see Access Control List (ACL) Overview.
%%
%% You specify each grantee as a type=value pair, where the type is one of
%% the following:
%%
%% <ul> <li> `id' – if the value specified is the canonical user ID of an
%% Amazon Web Services account
%%
%% </li> <li> `uri' – if you are granting permissions to a predefined
%% group
%%
%% </li> <li> `emailAddress' – if the value specified is the email
%% address of an Amazon Web Services account
%%
%% Using email addresses to specify a grantee is only supported in the
%% following Amazon Web Services Regions:
%%
%% US East (N. Virginia)
%%
%% US West (N. California)
%%
%% US West (Oregon)
%%
%% Asia Pacific (Singapore)
%%
%% Asia Pacific (Sydney)
%%
%% Asia Pacific (Tokyo)
%%
%% Europe (Ireland)
%%
%% South America (São Paulo)
%%
%% For a list of all the Amazon S3 supported Regions and endpoints, see
%% Regions and Endpoints in the Amazon Web Services General Reference.
%%
%% </li> </ul> For example, the following `x-amz-grant-write' header
%% grants create, overwrite, and delete objects permission to LogDelivery
%% group predefined by Amazon S3 and two Amazon Web Services accounts
%% identified by their email addresses.
%%
%% `x-amz-grant-write:
%% uri=&quot;http://acs.amazonaws.com/groups/s3/LogDelivery&quot;,
%% id=&quot;111122223333&quot;, id=&quot;555566667777&quot; '
%%
%% </li> </ul> You can use either a canned ACL or specify access permissions
%% explicitly. You cannot do both.
%%
%% </dd> <dt>Grantee Values</dt> <dd> You can specify the person (grantee) to
%% whom you're assigning access rights (using request elements) in the
%% following ways:
%%
%% <ul> <li> By the person's ID:
%%
%% `&lt;Grantee
%% xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
%% xsi:type=&quot;CanonicalUser&quot;&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt;
%% &lt;/Grantee&gt;'
%%
%% DisplayName is optional and ignored in the request
%%
%% </li> <li> By URI:
%%
%% `&lt;Grantee
%% xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
%% xsi:type=&quot;Group&quot;&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;'
%%
%% </li> <li> By Email address:
%%
%% `&lt;Grantee
%% xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
%% xsi:type=&quot;AmazonCustomerByEmail&quot;&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;&amp;&lt;/Grantee&gt;'
%%
%% The grantee is resolved to the CanonicalUser and, in a response to a GET
%% Object acl request, appears as the CanonicalUser.
%%
%% Using email addresses to specify a grantee is only supported in the
%% following Amazon Web Services Regions:
%%
%% US East (N. Virginia)
%%
%% US West (N. California)
%%
%% US West (Oregon)
%%
%% Asia Pacific (Singapore)
%%
%% Asia Pacific (Sydney)
%%
%% Asia Pacific (Tokyo)
%%
%% Europe (Ireland)
%%
%% South America (São Paulo)
%%
%% For a list of all the Amazon S3 supported Regions and endpoints, see
%% Regions and Endpoints in the Amazon Web Services General Reference.
%%
%% </li> </ul> </dd> </dl> The following operations are related to
%% `PutBucketAcl':
%%
%% <ul> <li> CreateBucket
%%
%% </li> <li> DeleteBucket
%%
%% </li> <li> GetObjectAcl
%%
%% </li> </ul>
put_bucket_acl(Client, Bucket, Input) ->
    put_bucket_acl(Client, Bucket, Input, []).
put_bucket_acl(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?acl"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-write">>, <<"GrantWrite">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Sets an analytics configuration for the bucket (specified by the
%% analytics configuration ID).
%%
%% You can have up to 1,000 analytics configurations per bucket.
%%
%% You can choose to have storage class analysis export analysis reports sent
%% to a comma-separated values (CSV) flat file. See the `DataExport'
%% request element. Reports are updated daily and are based on the object
%% filters that you configure. When selecting data export, you specify a
%% destination bucket and an optional destination prefix where the file is
%% written. You can export the data to a destination bucket in a different
%% account. However, the destination bucket must be in the same Region as the
%% bucket that you are making the PUT analytics configuration to. For more
%% information, see Amazon S3 Analytics – Storage Class Analysis.
%%
%% You must create a bucket policy on the destination bucket where the
%% exported file is written to grant permissions to Amazon S3 to write
%% objects to the bucket. For an example policy, see Granting Permissions for
%% Amazon S3 Inventory and Storage Class Analysis.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:PutAnalyticsConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% `PutBucketAnalyticsConfiguration' has the following special errors:
%%
%% <ul> <li> <ul> <li> HTTP Error: HTTP 400 Bad Request
%%
%% </li> <li> Code: InvalidArgument
%%
%% </li> <li> Cause: Invalid argument.
%%
%% </li> </ul> </li> <li> <ul> <li> HTTP Error: HTTP 400 Bad Request
%%
%% </li> <li> Code: TooManyConfigurations
%%
%% </li> <li> Cause: You are attempting to create a new configuration but
%% have already reached the 1,000-configuration limit.
%%
%% </li> </ul> </li> <li> <ul> <li> HTTP Error: HTTP 403 Forbidden
%%
%% </li> <li> Code: AccessDenied
%%
%% </li> <li> Cause: You are not the owner of the specified bucket, or you do
%% not have the s3:PutAnalyticsConfiguration bucket permission to set the
%% configuration on the bucket.
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% `PutBucketAnalyticsConfiguration':
%%
%% <ul> <li> GetBucketAnalyticsConfiguration
%%
%% </li> <li> DeleteBucketAnalyticsConfiguration
%%
%% </li> <li> ListBucketAnalyticsConfigurations
%%
%% </li> </ul>
put_bucket_analytics_configuration(Client, Bucket, Input) ->
    put_bucket_analytics_configuration(Client, Bucket, Input, []).
put_bucket_analytics_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?analytics"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"id">>, <<"Id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Sets the `cors' configuration for your bucket.
%%
%% If the configuration exists, Amazon S3 replaces it.
%%
%% To use this operation, you must be allowed to perform the
%% `s3:PutBucketCORS' action. By default, the bucket owner has this
%% permission and can grant it to others.
%%
%% You set this configuration on a bucket so that the bucket can service
%% cross-origin requests. For example, you might want to enable a request
%% whose origin is `http://www.example.com' to access your Amazon S3
%% bucket at `my.example.bucket.com' by using the browser's
%% `XMLHttpRequest' capability.
%%
%% To enable cross-origin resource sharing (CORS) on a bucket, you add the
%% `cors' subresource to the bucket. The `cors' subresource is an XML
%% document in which you configure rules that identify origins and the HTTP
%% methods that can be executed on your bucket. The document is limited to 64
%% KB in size.
%%
%% When Amazon S3 receives a cross-origin request (or a pre-flight OPTIONS
%% request) against a bucket, it evaluates the `cors' configuration on
%% the bucket and uses the first `CORSRule' rule that matches the
%% incoming browser request to enable a cross-origin request. For a rule to
%% match, the following conditions must be met:
%%
%% <ul> <li> The request's `Origin' header must match
%% `AllowedOrigin' elements.
%%
%% </li> <li> The request method (for example, GET, PUT, HEAD, and so on) or
%% the `Access-Control-Request-Method' header in case of a pre-flight
%% `OPTIONS' request must be one of the `AllowedMethod' elements.
%%
%% </li> <li> Every header specified in the
%% `Access-Control-Request-Headers' request header of a pre-flight
%% request must match an `AllowedHeader' element.
%%
%% </li> </ul> For more information about CORS, go to Enabling Cross-Origin
%% Resource Sharing in the Amazon S3 User Guide.
%%
%% The following operations are related to `PutBucketCors':
%%
%% <ul> <li> GetBucketCors
%%
%% </li> <li> DeleteBucketCors
%%
%% </li> <li> RESTOPTIONSobject
%%
%% </li> </ul>
put_bucket_cors(Client, Bucket, Input) ->
    put_bucket_cors(Client, Bucket, Input, []).
put_bucket_cors(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?cors"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, true}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc This action uses the `encryption' subresource to configure
%% default encryption and Amazon S3 Bucket Keys for an existing bucket.
%%
%% By default, all buckets have a default encryption configuration that uses
%% server-side encryption with Amazon S3 managed keys (SSE-S3). You can
%% optionally configure default encryption for a bucket by using server-side
%% encryption with Key Management Service (KMS) keys (SSE-KMS) or dual-layer
%% server-side encryption with Amazon Web Services KMS keys (DSSE-KMS). If
%% you specify default encryption by using SSE-KMS, you can also configure
%% Amazon S3 Bucket Keys. If you use PutBucketEncryption to set your default
%% bucket encryption to SSE-KMS, you should verify that your KMS key ID is
%% correct. Amazon S3 does not validate the KMS key ID provided in
%% PutBucketEncryption requests.
%%
%% This action requires Amazon Web Services Signature Version 4. For more
%% information, see Authenticating Requests (Amazon Web Services Signature
%% Version 4).
%%
%% To use this operation, you must have permission to perform the
%% `s3:PutEncryptionConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources in the Amazon S3 User Guide.
%%
%% The following operations are related to `PutBucketEncryption':
%%
%% <ul> <li> GetBucketEncryption
%%
%% </li> <li> DeleteBucketEncryption
%%
%% </li> </ul>
put_bucket_encryption(Client, Bucket, Input) ->
    put_bucket_encryption(Client, Bucket, Input, []).
put_bucket_encryption(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?encryption"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Puts a S3 Intelligent-Tiering configuration to the specified bucket.
%%
%% You can have up to 1,000 S3 Intelligent-Tiering configurations per bucket.
%%
%% The S3 Intelligent-Tiering storage class is designed to optimize storage
%% costs by automatically moving data to the most cost-effective storage
%% access tier, without performance impact or operational overhead. S3
%% Intelligent-Tiering delivers automatic cost savings in three low latency
%% and high throughput access tiers. To get the lowest storage cost on data
%% that can be accessed in minutes to hours, you can choose to activate
%% additional archiving capabilities.
%%
%% The S3 Intelligent-Tiering storage class is the ideal storage class for
%% data with unknown, changing, or unpredictable access patterns, independent
%% of object size or retention period. If the size of an object is less than
%% 128 KB, it is not monitored and not eligible for auto-tiering. Smaller
%% objects can be stored, but they are always charged at the Frequent Access
%% tier rates in the S3 Intelligent-Tiering storage class.
%%
%% For more information, see Storage class for automatically optimizing
%% frequently and infrequently accessed objects.
%%
%% Operations related to `PutBucketIntelligentTieringConfiguration'
%% include:
%%
%% <ul> <li> DeleteBucketIntelligentTieringConfiguration
%%
%% </li> <li> GetBucketIntelligentTieringConfiguration
%%
%% </li> <li> ListBucketIntelligentTieringConfigurations
%%
%% </li> </ul> You only need S3 Intelligent-Tiering enabled on a bucket if
%% you want to automatically move objects stored in the S3
%% Intelligent-Tiering storage class to the Archive Access or Deep Archive
%% Access tier.
%%
%% `PutBucketIntelligentTieringConfiguration' has the following special
%% errors:
%%
%% <dl> <dt>HTTP 400 Bad Request Error</dt> <dd> Code: InvalidArgument
%%
%% Cause: Invalid Argument
%%
%% </dd> <dt>HTTP 400 Bad Request Error</dt> <dd> Code: TooManyConfigurations
%%
%% Cause: You are attempting to create a new configuration but have already
%% reached the 1,000-configuration limit.
%%
%% </dd> <dt>HTTP 403 Forbidden Error</dt> <dd> Cause: You are not the owner
%% of the specified bucket, or you do not have the
%% `s3:PutIntelligentTieringConfiguration' bucket permission to set the
%% configuration on the bucket.
%%
%% </dd> </dl>
put_bucket_intelligent_tiering_configuration(Client, Bucket, Input) ->
    put_bucket_intelligent_tiering_configuration(Client, Bucket, Input, []).
put_bucket_intelligent_tiering_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?intelligent-tiering"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"id">>, <<"Id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc This implementation of the `PUT' action adds an inventory
%% configuration (identified by the inventory ID) to the bucket.
%%
%% You can have up to 1,000 inventory configurations per bucket.
%%
%% Amazon S3 inventory generates inventories of the objects in the bucket on
%% a daily or weekly basis, and the results are published to a flat file. The
%% bucket that is inventoried is called the source bucket, and the bucket
%% where the inventory flat file is stored is called the destination bucket.
%% The destination bucket must be in the same Amazon Web Services Region as
%% the source bucket.
%%
%% When you configure an inventory for a source bucket, you specify the
%% destination bucket where you want the inventory to be stored, and whether
%% to generate the inventory daily or weekly. You can also configure what
%% object metadata to include and whether to inventory all object versions or
%% only current versions. For more information, see Amazon S3 Inventory in
%% the Amazon S3 User Guide.
%%
%% You must create a bucket policy on the destination bucket to grant
%% permissions to Amazon S3 to write objects to the bucket in the defined
%% location. For an example policy, see Granting Permissions for Amazon S3
%% Inventory and Storage Class Analysis.
%%
%% <dl> <dt>Permissions</dt> <dd> To use this operation, you must have
%% permission to perform the `s3:PutInventoryConfiguration' action. The
%% bucket owner has this permission by default and can grant this permission
%% to others.
%%
%% The `s3:PutInventoryConfiguration' permission allows a user to create
%% an S3 Inventory report that includes all object metadata fields available
%% and to specify the destination bucket to store the inventory. A user with
%% read access to objects in the destination bucket can also access all
%% object metadata fields that are available in the inventory report.
%%
%% To restrict access to an inventory report, see Restricting access to an
%% Amazon S3 Inventory report in the Amazon S3 User Guide. For more
%% information about the metadata fields available in S3 Inventory, see
%% Amazon S3 Inventory lists in the Amazon S3 User Guide. For more
%% information about permissions, see Permissions related to bucket
%% subresource operations and Identity and access management in Amazon S3 in
%% the Amazon S3 User Guide.
%%
%% </dd> </dl> `PutBucketInventoryConfiguration' has the following
%% special errors:
%%
%% <dl> <dt>HTTP 400 Bad Request Error</dt> <dd> Code: InvalidArgument
%%
%% Cause: Invalid Argument
%%
%% </dd> <dt>HTTP 400 Bad Request Error</dt> <dd> Code: TooManyConfigurations
%%
%% Cause: You are attempting to create a new configuration but have already
%% reached the 1,000-configuration limit.
%%
%% </dd> <dt>HTTP 403 Forbidden Error</dt> <dd> Cause: You are not the owner
%% of the specified bucket, or you do not have the
%% `s3:PutInventoryConfiguration' bucket permission to set the
%% configuration on the bucket.
%%
%% </dd> </dl> The following operations are related to
%% `PutBucketInventoryConfiguration':
%%
%% <ul> <li> GetBucketInventoryConfiguration
%%
%% </li> <li> DeleteBucketInventoryConfiguration
%%
%% </li> <li> ListBucketInventoryConfigurations
%%
%% </li> </ul>
put_bucket_inventory_configuration(Client, Bucket, Input) ->
    put_bucket_inventory_configuration(Client, Bucket, Input, []).
put_bucket_inventory_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?inventory"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"id">>, <<"Id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc For an updated version of this API, see
%% PutBucketLifecycleConfiguration.
%%
%% This version has been deprecated. Existing lifecycle configurations will
%% work. For new lifecycle configurations, use the updated API.
%%
%% Creates a new lifecycle configuration for the bucket or replaces an
%% existing lifecycle configuration. For information about lifecycle
%% configuration, see Object Lifecycle Management in the Amazon S3 User
%% Guide.
%%
%% By default, all Amazon S3 resources, including buckets, objects, and
%% related subresources (for example, lifecycle configuration and website
%% configuration) are private. Only the resource owner, the Amazon Web
%% Services account that created the resource, can access it. The resource
%% owner can optionally grant access permissions to others by writing an
%% access policy. For this operation, users must get the
%% `s3:PutLifecycleConfiguration' permission.
%%
%% You can also explicitly deny permissions. Explicit denial also supersedes
%% any other permissions. If you want to prevent users or accounts from
%% removing or deleting objects from your bucket, you must deny them
%% permissions for the following actions:
%%
%% <ul> <li> `s3:DeleteObject'
%%
%% </li> <li> `s3:DeleteObjectVersion'
%%
%% </li> <li> `s3:PutLifecycleConfiguration'
%%
%% </li> </ul> For more information about permissions, see Managing Access
%% Permissions to your Amazon S3 Resources in the Amazon S3 User Guide.
%%
%% For more examples of transitioning objects to storage classes such as
%% STANDARD_IA or ONEZONE_IA, see Examples of Lifecycle Configuration.
%%
%% The following operations are related to `PutBucketLifecycle':
%%
%% <ul> <li> GetBucketLifecycle(Deprecated)
%%
%% </li> <li> GetBucketLifecycleConfiguration
%%
%% </li> <li> RestoreObject
%%
%% </li> <li> By default, a resource owner—in this case, a bucket owner,
%% which is the Amazon Web Services account that created the bucket—can
%% perform any of the operations. A resource owner can also grant others
%% permission to perform the operation. For more information, see the
%% following topics in the Amazon S3 User Guide:
%%
%% <ul> <li> Specifying Permissions in a Policy
%%
%% </li> <li> Managing Access Permissions to your Amazon S3 Resources
%%
%% </li> </ul> </li> </ul>
put_bucket_lifecycle(Client, Bucket, Input) ->
    put_bucket_lifecycle(Client, Bucket, Input, []).
put_bucket_lifecycle(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?lifecycle"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, true}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Creates a new lifecycle configuration for the bucket or replaces an
%% existing lifecycle configuration.
%%
%% Keep in mind that this will overwrite an existing lifecycle configuration,
%% so if you want to retain any configuration details, they must be included
%% in the new lifecycle configuration. For information about lifecycle
%% configuration, see Managing your storage lifecycle.
%%
%% Bucket lifecycle configuration now supports specifying a lifecycle rule
%% using an object key name prefix, one or more object tags, or a combination
%% of both. Accordingly, this section describes the latest API. The previous
%% version of the API supported filtering based only on an object key name
%% prefix, which is supported for backward compatibility. For the related API
%% description, see PutBucketLifecycle.
%%
%% <dl> <dt>Rules</dt> <dd> You specify the lifecycle configuration in your
%% request body. The lifecycle configuration is specified as XML consisting
%% of one or more rules. An Amazon S3 Lifecycle configuration can have up to
%% 1,000 rules. This limit is not adjustable. Each rule consists of the
%% following:
%%
%% <ul> <li> A filter identifying a subset of objects to which the rule
%% applies. The filter can be based on a key name prefix, object tags, or a
%% combination of both.
%%
%% </li> <li> A status indicating whether the rule is in effect.
%%
%% </li> <li> One or more lifecycle transition and expiration actions that
%% you want Amazon S3 to perform on the objects identified by the filter. If
%% the state of your bucket is versioning-enabled or versioning-suspended,
%% you can have many versions of the same object (one current version and
%% zero or more noncurrent versions). Amazon S3 provides predefined actions
%% that you can specify for current and noncurrent object versions.
%%
%% </li> </ul> For more information, see Object Lifecycle Management and
%% Lifecycle Configuration Elements.
%%
%% </dd> <dt>Permissions</dt> <dd> By default, all Amazon S3 resources are
%% private, including buckets, objects, and related subresources (for
%% example, lifecycle configuration and website configuration). Only the
%% resource owner (that is, the Amazon Web Services account that created it)
%% can access the resource. The resource owner can optionally grant access
%% permissions to others by writing an access policy. For this operation, a
%% user must get the `s3:PutLifecycleConfiguration' permission.
%%
%% You can also explicitly deny permissions. An explicit deny also supersedes
%% any other permissions. If you want to block users or accounts from
%% removing or deleting objects from your bucket, you must deny them
%% permissions for the following actions:
%%
%% <ul> <li> `s3:DeleteObject'
%%
%% </li> <li> `s3:DeleteObjectVersion'
%%
%% </li> <li> `s3:PutLifecycleConfiguration'
%%
%% </li> </ul> For more information about permissions, see Managing Access
%% Permissions to Your Amazon S3 Resources.
%%
%% </dd> </dl> The following operations are related to
%% `PutBucketLifecycleConfiguration':
%%
%% <ul> <li> Examples of Lifecycle Configuration
%%
%% </li> <li> GetBucketLifecycleConfiguration
%%
%% </li> <li> DeleteBucketLifecycle
%%
%% </li> </ul>
put_bucket_lifecycle_configuration(Client, Bucket, Input) ->
    put_bucket_lifecycle_configuration(Client, Bucket, Input, []).
put_bucket_lifecycle_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?lifecycle"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Set the logging parameters for a bucket and to specify permissions
%% for who can view and modify the logging parameters.
%%
%% All logs are saved to buckets in the same Amazon Web Services Region as
%% the source bucket. To set the logging status of a bucket, you must be the
%% bucket owner.
%%
%% The bucket owner is automatically granted FULL_CONTROL to all logs. You
%% use the `Grantee' request element to grant access to other people. The
%% `Permissions' request element specifies the kind of access the grantee
%% has to the logs.
%%
%% If the target bucket for log delivery uses the bucket owner enforced
%% setting for S3 Object Ownership, you can't use the `Grantee'
%% request element to grant access to others. Permissions can only be granted
%% using policies. For more information, see Permissions for server access
%% log delivery in the Amazon S3 User Guide.
%%
%% <dl> <dt>Grantee Values</dt> <dd> You can specify the person (grantee) to
%% whom you're assigning access rights (by using request elements) in the
%% following ways:
%%
%% <ul> <li> By the person's ID:
%%
%% `&lt;Grantee
%% xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
%% xsi:type=&quot;CanonicalUser&quot;&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt;
%% &lt;/Grantee&gt;'
%%
%% `DisplayName' is optional and ignored in the request.
%%
%% </li> <li> By Email address:
%%
%% ` &lt;Grantee
%% xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
%% xsi:type=&quot;AmazonCustomerByEmail&quot;&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;&lt;/Grantee&gt;'
%%
%% The grantee is resolved to the `CanonicalUser' and, in a response to a
%% `GETObjectAcl' request, appears as the CanonicalUser.
%%
%% </li> <li> By URI:
%%
%% `&lt;Grantee
%% xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
%% xsi:type=&quot;Group&quot;&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;'
%%
%% </li> </ul> </dd> </dl> To enable logging, you use `LoggingEnabled'
%% and its children request elements. To disable logging, you use an empty
%% `BucketLoggingStatus' request element:
%%
%% `&lt;BucketLoggingStatus
%% xmlns=&quot;http://doc.s3.amazonaws.com/2006-03-01&quot; /&gt;'
%%
%% For more information about server access logging, see Server Access
%% Logging in the Amazon S3 User Guide.
%%
%% For more information about creating a bucket, see CreateBucket. For more
%% information about returning the logging status of a bucket, see
%% GetBucketLogging.
%%
%% The following operations are related to `PutBucketLogging':
%%
%% <ul> <li> PutObject
%%
%% </li> <li> DeleteBucket
%%
%% </li> <li> CreateBucket
%%
%% </li> <li> GetBucketLogging
%%
%% </li> </ul>
put_bucket_logging(Client, Bucket, Input) ->
    put_bucket_logging(Client, Bucket, Input, []).
put_bucket_logging(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?logging"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Sets a metrics configuration (specified by the metrics configuration
%% ID) for the bucket.
%%
%% You can have up to 1,000 metrics configurations per bucket. If you're
%% updating an existing metrics configuration, note that this is a full
%% replacement of the existing metrics configuration. If you don't
%% include the elements you want to keep, they are erased.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:PutMetricsConfiguration' action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources.
%%
%% For information about CloudWatch request metrics for Amazon S3, see
%% Monitoring Metrics with Amazon CloudWatch.
%%
%% The following operations are related to
%% `PutBucketMetricsConfiguration':
%%
%% <ul> <li> DeleteBucketMetricsConfiguration
%%
%% </li> <li> GetBucketMetricsConfiguration
%%
%% </li> <li> ListBucketMetricsConfigurations
%%
%% </li> </ul> `PutBucketMetricsConfiguration' has the following special
%% error:
%%
%% <ul> <li> Error code: `TooManyConfigurations'
%%
%% <ul> <li> Description: You are attempting to create a new configuration
%% but have already reached the 1,000-configuration limit.
%%
%% </li> <li> HTTP Status Code: HTTP 400 Bad Request
%%
%% </li> </ul> </li> </ul>
put_bucket_metrics_configuration(Client, Bucket, Input) ->
    put_bucket_metrics_configuration(Client, Bucket, Input, []).
put_bucket_metrics_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?metrics"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"id">>, <<"Id">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc No longer used, see the PutBucketNotificationConfiguration operation.
put_bucket_notification(Client, Bucket, Input) ->
    put_bucket_notification(Client, Bucket, Input, []).
put_bucket_notification(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?notification"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Enables notifications of specified events for a bucket.
%%
%% For more information about event notifications, see Configuring Event
%% Notifications.
%%
%% Using this API, you can replace an existing notification configuration.
%% The configuration is an XML file that defines the event types that you
%% want Amazon S3 to publish and the destination where you want Amazon S3 to
%% publish an event notification when it detects an event of the specified
%% type.
%%
%% By default, your bucket has no event notifications configured. That is,
%% the notification configuration will be an empty
%% `NotificationConfiguration'.
%%
%% `&lt;NotificationConfiguration&gt;'
%%
%% `&lt;/NotificationConfiguration&gt;'
%%
%% This action replaces the existing notification configuration with the
%% configuration you include in the request body.
%%
%% After Amazon S3 receives this request, it first verifies that any Amazon
%% Simple Notification Service (Amazon SNS) or Amazon Simple Queue Service
%% (Amazon SQS) destination exists, and that the bucket owner has permission
%% to publish to it by sending a test notification. In the case of Lambda
%% destinations, Amazon S3 verifies that the Lambda function permissions
%% grant Amazon S3 permission to invoke the function from the Amazon S3
%% bucket. For more information, see Configuring Notifications for Amazon S3
%% Events.
%%
%% You can disable notifications by adding the empty
%% NotificationConfiguration element.
%%
%% For more information about the number of event notification configurations
%% that you can create per bucket, see Amazon S3 service quotas in Amazon Web
%% Services General Reference.
%%
%% By default, only the bucket owner can configure notifications on a bucket.
%% However, bucket owners can use a bucket policy to grant permission to
%% other users to set this configuration with the required
%% `s3:PutBucketNotification' permission.
%%
%% The PUT notification is an atomic operation. For example, suppose your
%% notification configuration includes SNS topic, SQS queue, and Lambda
%% function configurations. When you send a PUT request with this
%% configuration, Amazon S3 sends test messages to your SNS topic. If the
%% message fails, the entire PUT action will fail, and Amazon S3 will not add
%% the configuration to your bucket.
%%
%% If the configuration in the request body includes only one
%% `TopicConfiguration' specifying only the
%% `s3:ReducedRedundancyLostObject' event type, the response will also
%% include the `x-amz-sns-test-message-id' header containing the message
%% ID of the test notification sent to the topic.
%%
%% The following action is related to
%% `PutBucketNotificationConfiguration':
%%
%% <ul> <li> GetBucketNotificationConfiguration
%%
%% </li> </ul>
put_bucket_notification_configuration(Client, Bucket, Input) ->
    put_bucket_notification_configuration(Client, Bucket, Input, []).
put_bucket_notification_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?notification"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-skip-destination-validation">>, <<"SkipDestinationValidation">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Creates or modifies `OwnershipControls' for an Amazon S3 bucket.
%%
%% To use this operation, you must have the
%% `s3:PutBucketOwnershipControls' permission. For more information about
%% Amazon S3 permissions, see Specifying permissions in a policy.
%%
%% For information about Amazon S3 Object Ownership, see Using object
%% ownership.
%%
%% The following operations are related to `PutBucketOwnershipControls':
%%
%% <ul> <li> `GetBucketOwnershipControls'
%%
%% </li> <li> `DeleteBucketOwnershipControls'
%%
%% </li> </ul>
put_bucket_ownership_controls(Client, Bucket, Input) ->
    put_bucket_ownership_controls(Client, Bucket, Input, []).
put_bucket_ownership_controls(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?ownershipControls"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Applies an Amazon S3 bucket policy to an Amazon S3 bucket.
%%
%% If you are using an identity other than the root user of the Amazon Web
%% Services account that owns the bucket, the calling identity must have the
%% `PutBucketPolicy' permissions on the specified bucket and belong to
%% the bucket owner's account in order to use this operation.
%%
%% If you don't have `PutBucketPolicy' permissions, Amazon S3 returns
%% a `403 Access Denied' error. If you have the correct permissions, but
%% you're not using an identity that belongs to the bucket owner's
%% account, Amazon S3 returns a `405 Method Not Allowed' error.
%%
%% To ensure that bucket owners don't inadvertently lock themselves out
%% of their own buckets, the root principal in a bucket owner's Amazon
%% Web Services account can perform the `GetBucketPolicy',
%% `PutBucketPolicy', and `DeleteBucketPolicy' API actions, even if
%% their bucket policy explicitly denies the root principal's access.
%% Bucket owner root principals can only be blocked from performing these API
%% actions by VPC endpoint policies and Amazon Web Services Organizations
%% policies.
%%
%% For more information, see Bucket policy examples.
%%
%% The following operations are related to `PutBucketPolicy':
%%
%% <ul> <li> CreateBucket
%%
%% </li> <li> DeleteBucket
%%
%% </li> </ul>
put_bucket_policy(Client, Bucket, Input) ->
    put_bucket_policy(Client, Bucket, Input, []).
put_bucket_policy(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?policy"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-confirm-remove-self-bucket-access">>, <<"ConfirmRemoveSelfBucketAccess">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Creates a replication configuration or replaces an existing one.
%%
%% For more information, see Replication in the Amazon S3 User Guide.
%%
%% Specify the replication configuration in the request body. In the
%% replication configuration, you provide the name of the destination bucket
%% or buckets where you want Amazon S3 to replicate objects, the IAM role
%% that Amazon S3 can assume to replicate objects on your behalf, and other
%% relevant information. You can invoke this request for a specific Amazon
%% Web Services Region by using the `aws:RequestedRegion' condition key.
%%
%% A replication configuration must include at least one rule, and can
%% contain a maximum of 1,000. Each rule identifies a subset of objects to
%% replicate by filtering the objects in the source bucket. To choose
%% additional subsets of objects to replicate, add a rule for each subset.
%%
%% To specify a subset of the objects in the source bucket to apply a
%% replication rule to, add the Filter element as a child of the Rule
%% element. You can filter objects based on an object key prefix, one or more
%% object tags, or both. When you add the Filter element in the
%% configuration, you must also add the following elements:
%% `DeleteMarkerReplication', `Status', and `Priority'.
%%
%% If you are using an earlier version of the replication configuration,
%% Amazon S3 handles replication of delete markers differently. For more
%% information, see Backward Compatibility.
%%
%% For information about enabling versioning on a bucket, see Using
%% Versioning.
%%
%% <dl> <dt>Handling Replication of Encrypted Objects</dt> <dd> By default,
%% Amazon S3 doesn't replicate objects that are stored at rest using
%% server-side encryption with KMS keys. To replicate Amazon Web Services
%% KMS-encrypted objects, add the following: `SourceSelectionCriteria',
%% `SseKmsEncryptedObjects', `Status', `EncryptionConfiguration',
%% and `ReplicaKmsKeyID'. For information about replication
%% configuration, see Replicating Objects Created with SSE Using KMS keys.
%%
%% For information on `PutBucketReplication' errors, see List of
%% replication-related error codes
%%
%% </dd> <dt>Permissions</dt> <dd> To create a `PutBucketReplication'
%% request, you must have `s3:PutReplicationConfiguration' permissions
%% for the bucket.
%%
%% By default, a resource owner, in this case the Amazon Web Services account
%% that created the bucket, can perform this operation. The resource owner
%% can also grant others permissions to perform the operation. For more
%% information about permissions, see Specifying Permissions in a Policy and
%% Managing Access Permissions to Your Amazon S3 Resources.
%%
%% To perform this operation, the user or role performing the action must
%% have the iam:PassRole permission.
%%
%% </dd> </dl> The following operations are related to
%% `PutBucketReplication':
%%
%% <ul> <li> GetBucketReplication
%%
%% </li> <li> DeleteBucketReplication
%%
%% </li> </ul>
put_bucket_replication(Client, Bucket, Input) ->
    put_bucket_replication(Client, Bucket, Input, []).
put_bucket_replication(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?replication"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-bucket-object-lock-token">>, <<"Token">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Sets the request payment configuration for a bucket.
%%
%% By default, the bucket owner pays for downloads from the bucket. This
%% configuration parameter enables the bucket owner (only) to specify that
%% the person requesting the download will be charged for the download. For
%% more information, see Requester Pays Buckets.
%%
%% The following operations are related to `PutBucketRequestPayment':
%%
%% <ul> <li> CreateBucket
%%
%% </li> <li> GetBucketRequestPayment
%%
%% </li> </ul>
put_bucket_request_payment(Client, Bucket, Input) ->
    put_bucket_request_payment(Client, Bucket, Input, []).
put_bucket_request_payment(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?requestPayment"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Sets the tags for a bucket.
%%
%% Use tags to organize your Amazon Web Services bill to reflect your own
%% cost structure. To do this, sign up to get your Amazon Web Services
%% account bill with tag key values included. Then, to see the cost of
%% combined resources, organize your billing information according to
%% resources with the same tag key values. For example, you can tag several
%% resources with a specific application name, and then organize your billing
%% information to see the total cost of that application across several
%% services. For more information, see Cost Allocation and Tagging and Using
%% Cost Allocation in Amazon S3 Bucket Tags.
%%
%% When this operation sets the tags for a bucket, it will overwrite any
%% current tags the bucket already has. You cannot use this operation to add
%% tags to an existing list of tags.
%%
%% To use this operation, you must have permissions to perform the
%% `s3:PutBucketTagging' action. The bucket owner has this permission by
%% default and can grant this permission to others. For more information
%% about permissions, see Permissions Related to Bucket Subresource
%% Operations and Managing Access Permissions to Your Amazon S3 Resources.
%%
%% `PutBucketTagging' has the following special errors. For more Amazon
%% S3 errors see, Error Responses.
%%
%% <ul> <li> `InvalidTag' - The tag provided was not a valid tag. This
%% error can occur if the tag did not pass input validation. For more
%% information, see Using Cost Allocation in Amazon S3 Bucket Tags.
%%
%% </li> <li> `MalformedXML' - The XML provided does not match the
%% schema.
%%
%% </li> <li> `OperationAborted' - A conflicting conditional action is
%% currently in progress against this resource. Please try again.
%%
%% </li> <li> `InternalError' - The service was unable to apply the
%% provided tag to the bucket.
%%
%% </li> </ul> The following operations are related to
%% `PutBucketTagging':
%%
%% <ul> <li> GetBucketTagging
%%
%% </li> <li> DeleteBucketTagging
%%
%% </li> </ul>
put_bucket_tagging(Client, Bucket, Input) ->
    put_bucket_tagging(Client, Bucket, Input, []).
put_bucket_tagging(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?tagging"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, true}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Sets the versioning state of an existing bucket.
%%
%% You can set the versioning state with one of the following values:
%%
%% Enabled—Enables versioning for the objects in the bucket. All objects
%% added to the bucket receive a unique version ID.
%%
%% Suspended—Disables versioning for the objects in the bucket. All objects
%% added to the bucket receive the version ID null.
%%
%% If the versioning state has never been set on a bucket, it has no
%% versioning state; a GetBucketVersioning request does not return a
%% versioning state value.
%%
%% In order to enable MFA Delete, you must be the bucket owner. If you are
%% the bucket owner and want to enable MFA Delete in the bucket versioning
%% configuration, you must include the `x-amz-mfa request' header and the
%% `Status' and the `MfaDelete' request elements in a request to set
%% the versioning state of the bucket.
%%
%% If you have an object expiration lifecycle configuration in your
%% non-versioned bucket and you want to maintain the same permanent delete
%% behavior when you enable versioning, you must add a noncurrent expiration
%% policy. The noncurrent expiration lifecycle configuration will manage the
%% deletes of the noncurrent object versions in the version-enabled bucket.
%% (A version-enabled bucket maintains one current and zero or more
%% noncurrent object versions.) For more information, see Lifecycle and
%% Versioning.
%%
%% The following operations are related to `PutBucketVersioning':
%%
%% <ul> <li> CreateBucket
%%
%% </li> <li> DeleteBucket
%%
%% </li> <li> GetBucketVersioning
%%
%% </li> </ul>
put_bucket_versioning(Client, Bucket, Input) ->
    put_bucket_versioning(Client, Bucket, Input, []).
put_bucket_versioning(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?versioning"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-mfa">>, <<"MFA">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Sets the configuration of the website that is specified in the
%% `website' subresource.
%%
%% To configure a bucket as a website, you can add this subresource on the
%% bucket with website configuration information such as the file name of the
%% index document and any redirect rules. For more information, see Hosting
%% Websites on Amazon S3.
%%
%% This PUT action requires the `S3:PutBucketWebsite' permission. By
%% default, only the bucket owner can configure the website attached to a
%% bucket; however, bucket owners can allow other users to set the website
%% configuration by writing a bucket policy that grants them the
%% `S3:PutBucketWebsite' permission.
%%
%% To redirect all website requests sent to the bucket's website
%% endpoint, you add a website configuration with the following elements.
%% Because all requests are sent to another website, you don't need to
%% provide index document name for the bucket.
%%
%% <ul> <li> `WebsiteConfiguration'
%%
%% </li> <li> `RedirectAllRequestsTo'
%%
%% </li> <li> `HostName'
%%
%% </li> <li> `Protocol'
%%
%% </li> </ul> If you want granular control over redirects, you can use the
%% following elements to add routing rules that describe conditions for
%% redirecting requests and information about the redirect destination. In
%% this case, the website configuration must provide an index document for
%% the bucket, because some requests might not be redirected.
%%
%% <ul> <li> `WebsiteConfiguration'
%%
%% </li> <li> `IndexDocument'
%%
%% </li> <li> `Suffix'
%%
%% </li> <li> `ErrorDocument'
%%
%% </li> <li> `Key'
%%
%% </li> <li> `RoutingRules'
%%
%% </li> <li> `RoutingRule'
%%
%% </li> <li> `Condition'
%%
%% </li> <li> `HttpErrorCodeReturnedEquals'
%%
%% </li> <li> `KeyPrefixEquals'
%%
%% </li> <li> `Redirect'
%%
%% </li> <li> `Protocol'
%%
%% </li> <li> `HostName'
%%
%% </li> <li> `ReplaceKeyPrefixWith'
%%
%% </li> <li> `ReplaceKeyWith'
%%
%% </li> <li> `HttpRedirectCode'
%%
%% </li> </ul> Amazon S3 has a limitation of 50 routing rules per website
%% configuration. If you require more than 50 routing rules, you can use
%% object redirect. For more information, see Configuring an Object Redirect
%% in the Amazon S3 User Guide.
%%
%% The maximum request length is limited to 128 KB.
put_bucket_website(Client, Bucket, Input) ->
    put_bucket_website(Client, Bucket, Input, []).
put_bucket_website(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?website"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Adds an object to a bucket.
%%
%% You must have WRITE permissions on a bucket to add an object to it.
%%
%% Amazon S3 never adds partial objects; if you receive a success response,
%% Amazon S3 added the entire object to the bucket. You cannot use
%% `PutObject' to only update a single piece of metadata for an existing
%% object. You must put the entire object with updated metadata if you want
%% to update some values.
%%
%% Amazon S3 is a distributed system. If it receives multiple write requests
%% for the same object simultaneously, it overwrites all but the last object
%% written. To prevent objects from being deleted or overwritten, you can use
%% Amazon S3 Object Lock.
%%
%% To ensure that data is not corrupted traversing the network, use the
%% `Content-MD5' header. When you use this header, Amazon S3 checks the
%% object against the provided MD5 value and, if they do not match, returns
%% an error. Additionally, you can calculate the MD5 while putting an object
%% to Amazon S3 and compare the returned ETag to the calculated MD5 value.
%%
%% To successfully complete the `PutObject' request, you must have the
%% `s3:PutObject' in your IAM permissions.
%%
%% To successfully change the objects acl of your `PutObject' request,
%% you must have the `s3:PutObjectAcl' in your IAM permissions.
%%
%% To successfully set the tag-set with your `PutObject' request, you
%% must have the `s3:PutObjectTagging' in your IAM permissions.
%%
%% The `Content-MD5' header is required for any request to upload an
%% object with a retention period configured using Amazon S3 Object Lock. For
%% more information about Amazon S3 Object Lock, see Amazon S3 Object Lock
%% Overview in the Amazon S3 User Guide.
%%
%% You have four mutually exclusive options to protect data using server-side
%% encryption in Amazon S3, depending on how you choose to manage the
%% encryption keys. Specifically, the encryption key options are Amazon S3
%% managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS or DSSE-KMS),
%% and customer-provided keys (SSE-C). Amazon S3 encrypts data with
%% server-side encryption by using Amazon S3 managed keys (SSE-S3) by
%% default. You can optionally tell Amazon S3 to encrypt data at rest by
%% using server-side encryption with other key options. For more information,
%% see Using Server-Side Encryption.
%%
%% When adding a new object, you can use headers to grant ACL-based
%% permissions to individual Amazon Web Services accounts or to predefined
%% groups defined by Amazon S3. These permissions are then added to the ACL
%% on the object. By default, all objects are private. Only the owner has
%% full access control. For more information, see Access Control List (ACL)
%% Overview and Managing ACLs Using the REST API.
%%
%% If the bucket that you're uploading objects to uses the bucket owner
%% enforced setting for S3 Object Ownership, ACLs are disabled and no longer
%% affect permissions. Buckets that use this setting only accept PUT requests
%% that don't specify an ACL or PUT requests that specify bucket owner
%% full control ACLs, such as the `bucket-owner-full-control' canned ACL
%% or an equivalent form of this ACL expressed in the XML format. PUT
%% requests that contain other ACLs (for example, custom grants to certain
%% Amazon Web Services accounts) fail and return a `400' error with the
%% error code `AccessControlListNotSupported'. For more information, see
%% Controlling ownership of objects and disabling ACLs in the Amazon S3 User
%% Guide.
%%
%% If your bucket uses the bucket owner enforced setting for Object
%% Ownership, all objects written to the bucket by any account will be owned
%% by the bucket owner.
%%
%% By default, Amazon S3 uses the STANDARD Storage Class to store newly
%% created objects. The STANDARD storage class provides high durability and
%% high availability. Depending on performance needs, you can specify a
%% different Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS
%% Storage Class. For more information, see Storage Classes in the Amazon S3
%% User Guide.
%%
%% If you enable versioning for a bucket, Amazon S3 automatically generates a
%% unique version ID for the object being stored. Amazon S3 returns this ID
%% in the response. When you enable versioning for a bucket, if Amazon S3
%% receives multiple write requests for the same object simultaneously, it
%% stores all of the objects. For more information about versioning, see
%% Adding Objects to Versioning-Enabled Buckets. For information about
%% returning the versioning state of a bucket, see GetBucketVersioning.
%%
%% For more information about related Amazon S3 APIs, see the following:
%%
%% <ul> <li> CopyObject
%%
%% </li> <li> DeleteObject
%%
%% </li> </ul>
put_object(Client, Bucket, Key, Input) ->
    put_object(Client, Bucket, Key, Input, []).
put_object(Client, Bucket, Key, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, true},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"x-amz-checksum-crc32c">>, <<"ChecksumCRC32C">>},
                       {<<"x-amz-object-lock-retain-until-date">>, <<"ObjectLockRetainUntilDate">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
                       {<<"x-amz-object-lock-legal-hold">>, <<"ObjectLockLegalHoldStatus">>},
                       {<<"x-amz-tagging">>, <<"Tagging">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-website-redirect-location">>, <<"WebsiteRedirectLocation">>},
                       {<<"Content-Language">>, <<"ContentLanguage">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"Content-Encoding">>, <<"ContentEncoding">>},
                       {<<"x-amz-checksum-sha256">>, <<"ChecksumSHA256">>},
                       {<<"Expires">>, <<"Expires">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-server-side-encryption-context">>, <<"SSEKMSEncryptionContext">>},
                       {<<"Cache-Control">>, <<"CacheControl">>},
                       {<<"x-amz-storage-class">>, <<"StorageClass">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"Content-Length">>, <<"ContentLength">>},
                       {<<"x-amz-object-lock-mode">>, <<"ObjectLockMode">>},
                       {<<"Content-Disposition">>, <<"ContentDisposition">>},
                       {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
                       {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-checksum-crc32">>, <<"ChecksumCRC32">>},
                       {<<"x-amz-checksum-sha1">>, <<"ChecksumSHA1">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeadersMapping = [
                             {<<"x-amz-meta-">>, <<"Metadata">>}
                          ],
    {CustomHeaders, Input2} = aws_request:build_custom_headers(CustomHeadersMapping, Input1),

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
            {<<"x-amz-checksum-crc32">>, <<"ChecksumCRC32">>},
            {<<"x-amz-checksum-crc32c">>, <<"ChecksumCRC32C">>},
            {<<"x-amz-checksum-sha1">>, <<"ChecksumSHA1">>},
            {<<"x-amz-checksum-sha256">>, <<"ChecksumSHA256">>},
            {<<"ETag">>, <<"ETag">>},
            {<<"x-amz-expiration">>, <<"Expiration">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
            {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
            {<<"x-amz-server-side-encryption-context">>, <<"SSEKMSEncryptionContext">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
            {<<"x-amz-version-id">>, <<"VersionId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Uses the `acl' subresource to set the access control list (ACL)
%% permissions for a new or existing object in an S3 bucket.
%%
%% You must have `WRITE_ACP' permission to set the ACL of an object. For
%% more information, see What permissions can I grant? in the Amazon S3 User
%% Guide.
%%
%% This action is not supported by Amazon S3 on Outposts.
%%
%% Depending on your application needs, you can choose to set the ACL on an
%% object using either the request body or the headers. For example, if you
%% have an existing application that updates a bucket ACL using the request
%% body, you can continue to use that approach. For more information, see
%% Access Control List (ACL) Overview in the Amazon S3 User Guide.
%%
%% If your bucket uses the bucket owner enforced setting for S3 Object
%% Ownership, ACLs are disabled and no longer affect permissions. You must
%% use policies to grant access to your bucket and the objects in it.
%% Requests to set ACLs or update ACLs fail and return the
%% `AccessControlListNotSupported' error code. Requests to read ACLs are
%% still supported. For more information, see Controlling object ownership in
%% the Amazon S3 User Guide.
%%
%% <dl> <dt>Permissions</dt> <dd> You can set access permissions using one of
%% the following methods:
%%
%% <ul> <li> Specify a canned ACL with the `x-amz-acl' request header.
%% Amazon S3 supports a set of predefined ACLs, known as canned ACLs. Each
%% canned ACL has a predefined set of grantees and permissions. Specify the
%% canned ACL name as the value of `x-amz-ac'l. If you use this header,
%% you cannot use other access control-specific headers in your request. For
%% more information, see Canned ACL.
%%
%% </li> <li> Specify access permissions explicitly with the
%% `x-amz-grant-read', `x-amz-grant-read-acp',
%% `x-amz-grant-write-acp', and `x-amz-grant-full-control' headers.
%% When using these headers, you specify explicit access permissions and
%% grantees (Amazon Web Services accounts or Amazon S3 groups) who will
%% receive the permission. If you use these ACL-specific headers, you cannot
%% use `x-amz-acl' header to set a canned ACL. These parameters map to
%% the set of permissions that Amazon S3 supports in an ACL. For more
%% information, see Access Control List (ACL) Overview.
%%
%% You specify each grantee as a type=value pair, where the type is one of
%% the following:
%%
%% <ul> <li> `id' – if the value specified is the canonical user ID of an
%% Amazon Web Services account
%%
%% </li> <li> `uri' – if you are granting permissions to a predefined
%% group
%%
%% </li> <li> `emailAddress' – if the value specified is the email
%% address of an Amazon Web Services account
%%
%% Using email addresses to specify a grantee is only supported in the
%% following Amazon Web Services Regions:
%%
%% US East (N. Virginia)
%%
%% US West (N. California)
%%
%% US West (Oregon)
%%
%% Asia Pacific (Singapore)
%%
%% Asia Pacific (Sydney)
%%
%% Asia Pacific (Tokyo)
%%
%% Europe (Ireland)
%%
%% South America (São Paulo)
%%
%% For a list of all the Amazon S3 supported Regions and endpoints, see
%% Regions and Endpoints in the Amazon Web Services General Reference.
%%
%% </li> </ul> For example, the following `x-amz-grant-read' header
%% grants list objects permission to the two Amazon Web Services accounts
%% identified by their email addresses.
%%
%% `x-amz-grant-read: emailAddress=&quot;xyz@amazon.com&quot;,
%% emailAddress=&quot;abc@amazon.com&quot; '
%%
%% </li> </ul> You can use either a canned ACL or specify access permissions
%% explicitly. You cannot do both.
%%
%% </dd> <dt>Grantee Values</dt> <dd> You can specify the person (grantee) to
%% whom you're assigning access rights (using request elements) in the
%% following ways:
%%
%% <ul> <li> By the person's ID:
%%
%% `&lt;Grantee
%% xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
%% xsi:type=&quot;CanonicalUser&quot;&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt;
%% &lt;/Grantee&gt;'
%%
%% DisplayName is optional and ignored in the request.
%%
%% </li> <li> By URI:
%%
%% `&lt;Grantee
%% xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
%% xsi:type=&quot;Group&quot;&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;'
%%
%% </li> <li> By Email address:
%%
%% `&lt;Grantee
%% xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
%% xsi:type=&quot;AmazonCustomerByEmail&quot;&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;lt;/Grantee&gt;'
%%
%% The grantee is resolved to the CanonicalUser and, in a response to a GET
%% Object acl request, appears as the CanonicalUser.
%%
%% Using email addresses to specify a grantee is only supported in the
%% following Amazon Web Services Regions:
%%
%% US East (N. Virginia)
%%
%% US West (N. California)
%%
%% US West (Oregon)
%%
%% Asia Pacific (Singapore)
%%
%% Asia Pacific (Sydney)
%%
%% Asia Pacific (Tokyo)
%%
%% Europe (Ireland)
%%
%% South America (São Paulo)
%%
%% For a list of all the Amazon S3 supported Regions and endpoints, see
%% Regions and Endpoints in the Amazon Web Services General Reference.
%%
%% </li> </ul> </dd> <dt>Versioning</dt> <dd> The ACL of an object is set at
%% the object version level. By default, PUT sets the ACL of the current
%% version of an object. To set the ACL of a different version, use the
%% `versionId' subresource.
%%
%% </dd> </dl> The following operations are related to `PutObjectAcl':
%%
%% <ul> <li> CopyObject
%%
%% </li> <li> GetObject
%%
%% </li> </ul>
put_object_acl(Client, Bucket, Key, Input) ->
    put_object_acl(Client, Bucket, Key, Input, []).
put_object_acl(Client, Bucket, Key, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?acl"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-write">>, <<"GrantWrite">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Applies a legal hold configuration to the specified object.
%%
%% For more information, see Locking Objects.
%%
%% This action is not supported by Amazon S3 on Outposts.
put_object_legal_hold(Client, Bucket, Key, Input) ->
    put_object_legal_hold(Client, Bucket, Key, Input, []).
put_object_legal_hold(Client, Bucket, Key, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?legal-hold"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Places an Object Lock configuration on the specified bucket.
%%
%% The rule specified in the Object Lock configuration will be applied by
%% default to every new object placed in the specified bucket. For more
%% information, see Locking Objects.
%%
%% The `DefaultRetention' settings require both a mode and a period.
%%
%% The `DefaultRetention' period can be either `Days' or `Years'
%% but you must select one. You cannot specify `Days' and `Years' at
%% the same time.
%%
%% You can only enable Object Lock for new buckets. If you want to turn on
%% Object Lock for an existing bucket, contact Amazon Web Services Support.
put_object_lock_configuration(Client, Bucket, Input) ->
    put_object_lock_configuration(Client, Bucket, Input, []).
put_object_lock_configuration(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?object-lock"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-bucket-object-lock-token">>, <<"Token">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Places an Object Retention configuration on an object.
%%
%% For more information, see Locking Objects. Users or accounts require the
%% `s3:PutObjectRetention' permission in order to place an Object
%% Retention configuration on objects. Bypassing a Governance Retention
%% configuration requires the `s3:BypassGovernanceRetention' permission.
%%
%% This action is not supported by Amazon S3 on Outposts.
put_object_retention(Client, Bucket, Key, Input) ->
    put_object_retention(Client, Bucket, Key, Input, []).
put_object_retention(Client, Bucket, Key, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?retention"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-bypass-governance-retention">>, <<"BypassGovernanceRetention">>},
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Sets the supplied tag-set to an object that already exists in a
%% bucket.
%%
%% A tag is a key-value pair. For more information, see Object Tagging.
%%
%% You can associate tags with an object by sending a PUT request against the
%% tagging subresource that is associated with the object. You can retrieve
%% tags by sending a GET request. For more information, see GetObjectTagging.
%%
%% For tagging-related restrictions related to characters and encodings, see
%% Tag Restrictions. Note that Amazon S3 limits the maximum number of tags to
%% 10 tags per object.
%%
%% To use this operation, you must have permission to perform the
%% `s3:PutObjectTagging' action. By default, the bucket owner has this
%% permission and can grant this permission to others.
%%
%% To put tags of any other version, use the `versionId' query parameter.
%% You also need permission for the `s3:PutObjectVersionTagging' action.
%%
%% `PutObjectTagging' has the following special errors. For more Amazon
%% S3 errors see, Error Responses.
%%
%% <ul> <li> `InvalidTag' - The tag provided was not a valid tag. This
%% error can occur if the tag did not pass input validation. For more
%% information, see Object Tagging.
%%
%% </li> <li> `MalformedXML' - The XML provided does not match the
%% schema.
%%
%% </li> <li> `OperationAborted' - A conflicting conditional action is
%% currently in progress against this resource. Please try again.
%%
%% </li> <li> `InternalError' - The service was unable to apply the
%% provided tag to the object.
%%
%% </li> </ul> The following operations are related to
%% `PutObjectTagging':
%%
%% <ul> <li> GetObjectTagging
%%
%% </li> <li> DeleteObjectTagging
%%
%% </li> </ul>
put_object_tagging(Client, Bucket, Key, Input) ->
    put_object_tagging(Client, Bucket, Key, Input, []).
put_object_tagging(Client, Bucket, Key, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?tagging"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-version-id">>, <<"VersionId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Creates or modifies the `PublicAccessBlock' configuration for an
%% Amazon S3 bucket.
%%
%% To use this operation, you must have the
%% `s3:PutBucketPublicAccessBlock' permission. For more information about
%% Amazon S3 permissions, see Specifying Permissions in a Policy.
%%
%% When Amazon S3 evaluates the `PublicAccessBlock' configuration for a
%% bucket or an object, it checks the `PublicAccessBlock' configuration
%% for both the bucket (or the bucket that contains the object) and the
%% bucket owner's account. If the `PublicAccessBlock' configurations
%% are different between the bucket and the account, S3 uses the most
%% restrictive combination of the bucket-level and account-level settings.
%%
%% For more information about when Amazon S3 considers a bucket or an object
%% public, see The Meaning of &quot;Public&quot;.
%%
%% The following operations are related to `PutPublicAccessBlock':
%%
%% <ul> <li> GetPublicAccessBlock
%%
%% </li> <li> DeletePublicAccessBlock
%%
%% </li> <li> GetBucketPolicyStatus
%%
%% </li> <li> Using Amazon S3 Block Public Access
%%
%% </li> </ul>
put_public_access_block(Client, Bucket, Input) ->
    put_public_access_block(Client, Bucket, Input, []).
put_public_access_block(Client, Bucket, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "?publicAccessBlock"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Restores an archived copy of an object back into Amazon S3
%%
%% This action is not supported by Amazon S3 on Outposts.
%%
%% This action performs the following types of requests:
%%
%% <ul> <li> `select' - Perform a select query on an archived object
%%
%% </li> <li> `restore an archive' - Restore an archived object
%%
%% </li> </ul> For more information about the `S3' structure in the
%% request body, see the following:
%%
%% <ul> <li> PutObject
%%
%% </li> <li> Managing Access with ACLs in the Amazon S3 User Guide
%%
%% </li> <li> Protecting Data Using Server-Side Encryption in the Amazon S3
%% User Guide
%%
%% </li> </ul> Define the SQL expression for the `SELECT' type of
%% restoration for your query in the request body's
%% `SelectParameters' structure. You can use expressions like the
%% following examples.
%%
%% <ul> <li> The following expression returns all records from the specified
%% object.
%%
%% `SELECT * FROM Object'
%%
%% </li> <li> Assuming that you are not using any headers for data stored in
%% the object, you can specify columns with positional headers.
%%
%% `SELECT s._1, s._2 FROM Object s WHERE s._3 &gt; 100'
%%
%% </li> <li> If you have headers and you set the `fileHeaderInfo' in the
%% `CSV' structure in the request body to `USE', you can specify
%% headers in the query. (If you set the `fileHeaderInfo' field to
%% `IGNORE', the first row is skipped for the query.) You cannot mix
%% ordinal positions with header column names.
%%
%% `SELECT s.Id, s.FirstName, s.SSN FROM S3Object s'
%%
%% </li> </ul> When making a select request, you can also do the following:
%%
%% <ul> <li> To expedite your queries, specify the `Expedited' tier. For
%% more information about tiers, see &quot;Restoring Archives,&quot; later in
%% this topic.
%%
%% </li> <li> Specify details about the data serialization format of both the
%% input object that is being queried and the serialization of the
%% CSV-encoded query results.
%%
%% </li> </ul> The following are additional important facts about the select
%% feature:
%%
%% <ul> <li> The output results are new Amazon S3 objects. Unlike archive
%% retrievals, they are stored until explicitly deleted-manually or through a
%% lifecycle configuration.
%%
%% </li> <li> You can issue more than one select request on the same Amazon
%% S3 object. Amazon S3 doesn't duplicate requests, so avoid issuing
%% duplicate requests.
%%
%% </li> <li> Amazon S3 accepts a select request even if the object has
%% already been restored. A select request doesn’t return error response
%% `409'.
%%
%% </li> </ul> <dl> <dt>Permissions</dt> <dd> To use this operation, you must
%% have permissions to perform the `s3:RestoreObject' action. The bucket
%% owner has this permission by default and can grant this permission to
%% others. For more information about permissions, see Permissions Related to
%% Bucket Subresource Operations and Managing Access Permissions to Your
%% Amazon S3 Resources in the Amazon S3 User Guide.
%%
%% </dd> <dt>Restoring objects</dt> <dd> Objects that you archive to the S3
%% Glacier Flexible Retrieval Flexible Retrieval or S3 Glacier Deep Archive
%% storage class, and S3 Intelligent-Tiering Archive or S3
%% Intelligent-Tiering Deep Archive tiers, are not accessible in real time.
%% For objects in the S3 Glacier Flexible Retrieval Flexible Retrieval or S3
%% Glacier Deep Archive storage classes, you must first initiate a restore
%% request, and then wait until a temporary copy of the object is available.
%% If you want a permanent copy of the object, create a copy of it in the
%% Amazon S3 Standard storage class in your S3 bucket. To access an archived
%% object, you must restore the object for the duration (number of days) that
%% you specify. For objects in the Archive Access or Deep Archive Access
%% tiers of S3 Intelligent-Tiering, you must first initiate a restore
%% request, and then wait until the object is moved into the Frequent Access
%% tier.
%%
%% To restore a specific object version, you can provide a version ID. If you
%% don't provide a version ID, Amazon S3 restores the current version.
%%
%% When restoring an archived object, you can specify one of the following
%% data access tier options in the `Tier' element of the request body:
%%
%% <ul> <li> `Expedited' - Expedited retrievals allow you to quickly
%% access your data stored in the S3 Glacier Flexible Retrieval Flexible
%% Retrieval storage class or S3 Intelligent-Tiering Archive tier when
%% occasional urgent requests for restoring archives are required. For all
%% but the largest archived objects (250 MB+), data accessed using Expedited
%% retrievals is typically made available within 1–5 minutes. Provisioned
%% capacity ensures that retrieval capacity for Expedited retrievals is
%% available when you need it. Expedited retrievals and provisioned capacity
%% are not available for objects stored in the S3 Glacier Deep Archive
%% storage class or S3 Intelligent-Tiering Deep Archive tier.
%%
%% </li> <li> `Standard' - Standard retrievals allow you to access any of
%% your archived objects within several hours. This is the default option for
%% retrieval requests that do not specify the retrieval option. Standard
%% retrievals typically finish within 3–5 hours for objects stored in the S3
%% Glacier Flexible Retrieval Flexible Retrieval storage class or S3
%% Intelligent-Tiering Archive tier. They typically finish within 12 hours
%% for objects stored in the S3 Glacier Deep Archive storage class or S3
%% Intelligent-Tiering Deep Archive tier. Standard retrievals are free for
%% objects stored in S3 Intelligent-Tiering.
%%
%% </li> <li> `Bulk' - Bulk retrievals free for objects stored in the S3
%% Glacier Flexible Retrieval and S3 Intelligent-Tiering storage classes,
%% enabling you to retrieve large amounts, even petabytes, of data at no
%% cost. Bulk retrievals typically finish within 5–12 hours for objects
%% stored in the S3 Glacier Flexible Retrieval Flexible Retrieval storage
%% class or S3 Intelligent-Tiering Archive tier. Bulk retrievals are also the
%% lowest-cost retrieval option when restoring objects from S3 Glacier Deep
%% Archive. They typically finish within 48 hours for objects stored in the
%% S3 Glacier Deep Archive storage class or S3 Intelligent-Tiering Deep
%% Archive tier.
%%
%% </li> </ul> For more information about archive retrieval options and
%% provisioned capacity for `Expedited' data access, see Restoring
%% Archived Objects in the Amazon S3 User Guide.
%%
%% You can use Amazon S3 restore speed upgrade to change the restore speed to
%% a faster speed while it is in progress. For more information, see
%% Upgrading the speed of an in-progress restore in the Amazon S3 User Guide.
%%
%% To get the status of object restoration, you can send a `HEAD'
%% request. Operations return the `x-amz-restore' header, which provides
%% information about the restoration status, in the response. You can use
%% Amazon S3 event notifications to notify you when a restore is initiated or
%% completed. For more information, see Configuring Amazon S3 Event
%% Notifications in the Amazon S3 User Guide.
%%
%% After restoring an archived object, you can update the restoration period
%% by reissuing the request with a new period. Amazon S3 updates the
%% restoration period relative to the current time and charges only for the
%% request-there are no data transfer charges. You cannot update the
%% restoration period when Amazon S3 is actively processing your current
%% restore request for the object.
%%
%% If your bucket has a lifecycle configuration with a rule that includes an
%% expiration action, the object expiration overrides the life span that you
%% specify in a restore request. For example, if you restore an object copy
%% for 10 days, but the object is scheduled to expire in 3 days, Amazon S3
%% deletes the object in 3 days. For more information about lifecycle
%% configuration, see PutBucketLifecycleConfiguration and Object Lifecycle
%% Management in Amazon S3 User Guide.
%%
%% </dd> <dt>Responses</dt> <dd> A successful action returns either the `200
%% OK' or `202 Accepted' status code.
%%
%% <ul> <li> If the object is not previously restored, then Amazon S3 returns
%% `202 Accepted' in the response.
%%
%% </li> <li> If the object is previously restored, Amazon S3 returns `200
%% OK' in the response.
%%
%% </li> </ul> <ul> <li> Special errors:
%%
%% <ul> <li> Code: RestoreAlreadyInProgress
%%
%% </li> <li> Cause: Object restore is already in progress. (This error does
%% not apply to SELECT type requests.)
%%
%% </li> <li> HTTP Status Code: 409 Conflict
%%
%% </li> <li> SOAP Fault Code Prefix: Client
%%
%% </li> </ul> </li> <li> <ul> <li> Code:
%% GlacierExpeditedRetrievalNotAvailable
%%
%% </li> <li> Cause: expedited retrievals are currently not available. Try
%% again later. (Returned if there is insufficient capacity to process the
%% Expedited request. This error applies only to Expedited retrievals and not
%% to S3 Standard or Bulk retrievals.)
%%
%% </li> <li> HTTP Status Code: 503
%%
%% </li> <li> SOAP Fault Code Prefix: N/A
%%
%% </li> </ul> </li> </ul> </dd> </dl> The following operations are related
%% to `RestoreObject':
%%
%% <ul> <li> PutBucketLifecycleConfiguration
%%
%% </li> <li> GetBucketNotificationConfiguration
%%
%% </li> </ul>
restore_object(Client, Bucket, Key, Input) ->
    restore_object(Client, Bucket, Key, Input, []).
restore_object(Client, Bucket, Key, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?restore"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionId">>, <<"VersionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-restore-output-path">>, <<"RestoreOutputPath">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc This action filters the contents of an Amazon S3 object based on a
%% simple structured query language (SQL) statement.
%%
%% In the request, along with the SQL expression, you must also specify a
%% data serialization format (JSON, CSV, or Apache Parquet) of the object.
%% Amazon S3 uses this format to parse object data into records, and returns
%% only records that match the specified SQL expression. You must also
%% specify the data serialization format for the response.
%%
%% This action is not supported by Amazon S3 on Outposts.
%%
%% For more information about Amazon S3 Select, see Selecting Content from
%% Objects and SELECT Command in the Amazon S3 User Guide.
%%
%% <dl> <dt>Permissions</dt> <dd> You must have `s3:GetObject' permission
%% for this operation. Amazon S3 Select does not support anonymous access.
%% For more information about permissions, see Specifying Permissions in a
%% Policy in the Amazon S3 User Guide.
%%
%% </dd> <dt>Object Data Formats</dt> <dd> You can use Amazon S3 Select to
%% query objects that have the following format properties:
%%
%% <ul> <li> CSV, JSON, and Parquet - Objects must be in CSV, JSON, or
%% Parquet format.
%%
%% </li> <li> UTF-8 - UTF-8 is the only encoding type Amazon S3 Select
%% supports.
%%
%% </li> <li> GZIP or BZIP2 - CSV and JSON files can be compressed using GZIP
%% or BZIP2. GZIP and BZIP2 are the only compression formats that Amazon S3
%% Select supports for CSV and JSON files. Amazon S3 Select supports columnar
%% compression for Parquet using GZIP or Snappy. Amazon S3 Select does not
%% support whole-object compression for Parquet objects.
%%
%% </li> <li> Server-side encryption - Amazon S3 Select supports querying
%% objects that are protected with server-side encryption.
%%
%% For objects that are encrypted with customer-provided encryption keys
%% (SSE-C), you must use HTTPS, and you must use the headers that are
%% documented in the GetObject. For more information about SSE-C, see
%% Server-Side Encryption (Using Customer-Provided Encryption Keys) in the
%% Amazon S3 User Guide.
%%
%% For objects that are encrypted with Amazon S3 managed keys (SSE-S3) and
%% Amazon Web Services KMS keys (SSE-KMS), server-side encryption is handled
%% transparently, so you don't need to specify anything. For more
%% information about server-side encryption, including SSE-S3 and SSE-KMS,
%% see Protecting Data Using Server-Side Encryption in the Amazon S3 User
%% Guide.
%%
%% </li> </ul> </dd> <dt>Working with the Response Body</dt> <dd> Given the
%% response size is unknown, Amazon S3 Select streams the response as a
%% series of messages and includes a `Transfer-Encoding' header with
%% `chunked' as its value in the response. For more information, see
%% Appendix: SelectObjectContent Response.
%%
%% </dd> <dt>GetObject Support</dt> <dd> The `SelectObjectContent' action
%% does not support the following `GetObject' functionality. For more
%% information, see GetObject.
%%
%% <ul> <li> `Range': Although you can specify a scan range for an Amazon
%% S3 Select request (see SelectObjectContentRequest - ScanRange in the
%% request parameters), you cannot specify the range of bytes of an object to
%% return.
%%
%% </li> <li> The `GLACIER', `DEEP_ARCHIVE', and
%% `REDUCED_REDUNDANCY' storage classes, or the `ARCHIVE_ACCESS' and
%% `DEEP_ARCHIVE_ACCESS' access tiers of the `INTELLIGENT_TIERING'
%% storage class: You cannot query objects in the `GLACIER',
%% `DEEP_ARCHIVE', or `REDUCED_REDUNDANCY' storage classes, nor
%% objects in the `ARCHIVE_ACCESS' or `DEEP_ARCHIVE_ACCESS' access
%% tiers of the `INTELLIGENT_TIERING' storage class. For more information
%% about storage classes, see Using Amazon S3 storage classes in the Amazon
%% S3 User Guide.
%%
%% </li> </ul> </dd> <dt>Special Errors</dt> <dd> For a list of special
%% errors for this operation, see List of SELECT Object Content Error Codes
%%
%% </dd> </dl> The following operations are related to
%% `SelectObjectContent':
%%
%% <ul> <li> GetObject
%%
%% </li> <li> GetBucketLifecycleConfiguration
%%
%% </li> <li> PutBucketLifecycleConfiguration
%%
%% </li> </ul>
select_object_content(Client, Bucket, Key, Input) ->
    select_object_content(Client, Bucket, Key, Input, []).
select_object_content(Client, Bucket, Key, Input0, Options0) ->
    Method = post,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), "?select&select-type=2"],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%% @doc Uploads a part in a multipart upload.
%%
%% In this operation, you provide part data in your request. However, you
%% have an option to specify your existing Amazon S3 object as a data source
%% for the part you are uploading. To upload a part from an existing object,
%% you use the UploadPartCopy operation.
%%
%% You must initiate a multipart upload (see CreateMultipartUpload) before
%% you can upload any part. In response to your initiate request, Amazon S3
%% returns an upload ID, a unique identifier, that you must include in your
%% upload part request.
%%
%% Part numbers can be any number from 1 to 10,000, inclusive. A part number
%% uniquely identifies a part and also defines its position within the object
%% being created. If you upload a new part using the same part number that
%% was used with a previous part, the previously uploaded part is
%% overwritten.
%%
%% For information about maximum and minimum part sizes and other multipart
%% upload specifications, see Multipart upload limits in the Amazon S3 User
%% Guide.
%%
%% To ensure that data is not corrupted when traversing the network, specify
%% the `Content-MD5' header in the upload part request. Amazon S3 checks
%% the part data against the provided MD5 value. If they do not match, Amazon
%% S3 returns an error.
%%
%% If the upload request is signed with Signature Version 4, then Amazon Web
%% Services S3 uses the `x-amz-content-sha256' header as a checksum
%% instead of `Content-MD5'. For more information see Authenticating
%% Requests: Using the Authorization Header (Amazon Web Services Signature
%% Version 4).
%%
%% Note: After you initiate multipart upload and upload one or more parts,
%% you must either complete or abort multipart upload in order to stop
%% getting charged for storage of the uploaded parts. Only after you either
%% complete or abort multipart upload, Amazon S3 frees up the parts storage
%% and stops charging you for the parts storage.
%%
%% For more information on multipart uploads, go to Multipart Upload Overview
%% in the Amazon S3 User Guide .
%%
%% For information on the permissions required to use the multipart upload
%% API, go to Multipart Upload and Permissions in the Amazon S3 User Guide.
%%
%% Server-side encryption is for data encryption at rest. Amazon S3 encrypts
%% your data as it writes it to disks in its data centers and decrypts it
%% when you access it. You have three mutually exclusive options to protect
%% data using server-side encryption in Amazon S3, depending on how you
%% choose to manage the encryption keys. Specifically, the encryption key
%% options are Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys
%% (SSE-KMS), and Customer-Provided Keys (SSE-C). Amazon S3 encrypts data
%% with server-side encryption using Amazon S3 managed keys (SSE-S3) by
%% default. You can optionally tell Amazon S3 to encrypt data at rest using
%% server-side encryption with other key options. The option you use depends
%% on whether you want to use KMS keys (SSE-KMS) or provide your own
%% encryption key (SSE-C). If you choose to provide your own encryption key,
%% the request headers you provide in the request must match the headers you
%% used in the request to initiate the upload by using CreateMultipartUpload.
%% For more information, go to Using Server-Side Encryption in the Amazon S3
%% User Guide.
%%
%% Server-side encryption is supported by the S3 Multipart Upload actions.
%% Unless you are using a customer-provided encryption key (SSE-C), you
%% don't need to specify the encryption parameters in each UploadPart
%% request. Instead, you only need to specify the server-side encryption
%% parameters in the initial Initiate Multipart request. For more
%% information, see CreateMultipartUpload.
%%
%% If you requested server-side encryption using a customer-provided
%% encryption key (SSE-C) in your initiate multipart upload request, you must
%% provide identical encryption information in each part upload using the
%% following headers.
%%
%% <ul> <li> x-amz-server-side-encryption-customer-algorithm
%%
%% </li> <li> x-amz-server-side-encryption-customer-key
%%
%% </li> <li> x-amz-server-side-encryption-customer-key-MD5
%%
%% </li> </ul> `UploadPart' has the following special errors:
%%
%% <ul> <li> <ul> <li> Code: NoSuchUpload
%%
%% </li> <li> Cause: The specified multipart upload does not exist. The
%% upload ID might be invalid, or the multipart upload might have been
%% aborted or completed.
%%
%% </li> <li> HTTP Status Code: 404 Not Found
%%
%% </li> <li> SOAP Fault Code Prefix: Client
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% `UploadPart':
%%
%% <ul> <li> CreateMultipartUpload
%%
%% </li> <li> CompleteMultipartUpload
%%
%% </li> <li> AbortMultipartUpload
%%
%% </li> <li> ListParts
%%
%% </li> <li> ListMultipartUploads
%%
%% </li> </ul>
upload_part(Client, Bucket, Key, Input) ->
    upload_part(Client, Bucket, Key, Input, []).
upload_part(Client, Bucket, Key, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, true},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-sdk-checksum-algorithm">>, <<"ChecksumAlgorithm">>},
                       {<<"x-amz-checksum-crc32">>, <<"ChecksumCRC32">>},
                       {<<"x-amz-checksum-crc32c">>, <<"ChecksumCRC32C">>},
                       {<<"x-amz-checksum-sha1">>, <<"ChecksumSHA1">>},
                       {<<"x-amz-checksum-sha256">>, <<"ChecksumSHA256">>},
                       {<<"Content-Length">>, <<"ContentLength">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"partNumber">>, <<"PartNumber">>},
                     {<<"uploadId">>, <<"UploadId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
            {<<"x-amz-checksum-crc32">>, <<"ChecksumCRC32">>},
            {<<"x-amz-checksum-crc32c">>, <<"ChecksumCRC32C">>},
            {<<"x-amz-checksum-sha1">>, <<"ChecksumSHA1">>},
            {<<"x-amz-checksum-sha256">>, <<"ChecksumSHA256">>},
            {<<"ETag">>, <<"ETag">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
            {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Uploads a part by copying data from an existing object as data
%% source.
%%
%% You specify the data source by adding the request header
%% `x-amz-copy-source' in your request and a byte range by adding the
%% request header `x-amz-copy-source-range' in your request.
%%
%% For information about maximum and minimum part sizes and other multipart
%% upload specifications, see Multipart upload limits in the Amazon S3 User
%% Guide.
%%
%% Instead of using an existing object as part data, you might use the
%% UploadPart action and provide data in your request.
%%
%% You must initiate a multipart upload before you can upload any part. In
%% response to your initiate request. Amazon S3 returns a unique identifier,
%% the upload ID, that you must include in your upload part request.
%%
%% For more information about using the `UploadPartCopy' operation, see
%% the following:
%%
%% <ul> <li> For conceptual information about multipart uploads, see
%% Uploading Objects Using Multipart Upload in the Amazon S3 User Guide.
%%
%% </li> <li> For information about permissions required to use the multipart
%% upload API, see Multipart Upload and Permissions in the Amazon S3 User
%% Guide.
%%
%% </li> <li> For information about copying objects using a single atomic
%% action vs. a multipart upload, see Operations on Objects in the Amazon S3
%% User Guide.
%%
%% </li> <li> For information about using server-side encryption with
%% customer-provided encryption keys with the `UploadPartCopy' operation,
%% see CopyObject and UploadPart.
%%
%% </li> </ul> Note the following additional considerations about the request
%% headers `x-amz-copy-source-if-match',
%% `x-amz-copy-source-if-none-match',
%% `x-amz-copy-source-if-unmodified-since', and
%% `x-amz-copy-source-if-modified-since':
%%
%% <ul> <li> Consideration 1 - If both of the
%% `x-amz-copy-source-if-match' and
%% `x-amz-copy-source-if-unmodified-since' headers are present in the
%% request as follows:
%%
%% `x-amz-copy-source-if-match' condition evaluates to `true', and;
%%
%% `x-amz-copy-source-if-unmodified-since' condition evaluates to
%% `false';
%%
%% Amazon S3 returns `200 OK' and copies the data.
%%
%% </li> <li> Consideration 2 - If both of the
%% `x-amz-copy-source-if-none-match' and
%% `x-amz-copy-source-if-modified-since' headers are present in the
%% request as follows:
%%
%% `x-amz-copy-source-if-none-match' condition evaluates to `false',
%% and;
%%
%% `x-amz-copy-source-if-modified-since' condition evaluates to
%% `true';
%%
%% Amazon S3 returns `412 Precondition Failed' response code.
%%
%% </li> </ul> <dl> <dt>Versioning</dt> <dd> If your bucket has versioning
%% enabled, you could have multiple versions of the same object. By default,
%% `x-amz-copy-source' identifies the current version of the object to
%% copy. If the current version is a delete marker and you don't specify
%% a versionId in the `x-amz-copy-source', Amazon S3 returns a 404 error,
%% because the object does not exist. If you specify versionId in the
%% `x-amz-copy-source' and the versionId is a delete marker, Amazon S3
%% returns an HTTP 400 error, because you are not allowed to specify a delete
%% marker as a version for the `x-amz-copy-source'.
%%
%% You can optionally specify a specific version of the source object to copy
%% by adding the `versionId' subresource as shown in the following
%% example:
%%
%% `x-amz-copy-source: /bucket/object?versionId=version id'
%%
%% </dd> <dt>Special errors</dt> <dd> <ul> <li> <ul> <li> Code: NoSuchUpload
%%
%% </li> <li> Cause: The specified multipart upload does not exist. The
%% upload ID might be invalid, or the multipart upload might have been
%% aborted or completed.
%%
%% </li> <li> HTTP Status Code: 404 Not Found
%%
%% </li> </ul> </li> <li> <ul> <li> Code: InvalidRequest
%%
%% </li> <li> Cause: The specified copy source is not supported as a
%% byte-range copy source.
%%
%% </li> <li> HTTP Status Code: 400 Bad Request
%%
%% </li> </ul> </li> </ul> </dd> </dl> The following operations are related
%% to `UploadPartCopy':
%%
%% <ul> <li> CreateMultipartUpload
%%
%% </li> <li> UploadPart
%%
%% </li> <li> CompleteMultipartUpload
%%
%% </li> <li> AbortMultipartUpload
%%
%% </li> <li> ListParts
%%
%% </li> <li> ListMultipartUploads
%%
%% </li> </ul>
upload_part_copy(Client, Bucket, Key, Input) ->
    upload_part_copy(Client, Bucket, Key, Input, []).
upload_part_copy(Client, Bucket, Key, Input0, Options0) ->
    Method = put,
    Path = ["/", aws_util:encode_uri(Bucket), "/", aws_util:encode_multi_segment_uri(Key), ""],

    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-copy-source">>, <<"CopySource">>},
                       {<<"x-amz-copy-source-if-match">>, <<"CopySourceIfMatch">>},
                       {<<"x-amz-copy-source-if-modified-since">>, <<"CopySourceIfModifiedSince">>},
                       {<<"x-amz-copy-source-if-none-match">>, <<"CopySourceIfNoneMatch">>},
                       {<<"x-amz-copy-source-if-unmodified-since">>, <<"CopySourceIfUnmodifiedSince">>},
                       {<<"x-amz-copy-source-range">>, <<"CopySourceRange">>},
                       {<<"x-amz-copy-source-server-side-encryption-customer-algorithm">>, <<"CopySourceSSECustomerAlgorithm">>},
                       {<<"x-amz-copy-source-server-side-encryption-customer-key">>, <<"CopySourceSSECustomerKey">>},
                       {<<"x-amz-copy-source-server-side-encryption-customer-key-MD5">>, <<"CopySourceSSECustomerKeyMD5">>},
                       {<<"x-amz-expected-bucket-owner">>, <<"ExpectedBucketOwner">>},
                       {<<"x-amz-source-expected-bucket-owner">>, <<"ExpectedSourceBucketOwner">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"partNumber">>, <<"PartNumber">>},
                     {<<"uploadId">>, <<"UploadId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
            {<<"x-amz-copy-source-version-id">>, <<"CopySourceVersionId">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
            {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Passes transformed objects to a `GetObject' operation when using
%% Object Lambda access points.
%%
%% For information about Object Lambda access points, see Transforming
%% objects with Object Lambda access points in the Amazon S3 User Guide.
%%
%% This operation supports metadata that can be returned by GetObject, in
%% addition to `RequestRoute', `RequestToken', `StatusCode',
%% `ErrorCode', and `ErrorMessage'. The `GetObject' response
%% metadata is supported so that the `WriteGetObjectResponse' caller,
%% typically an Lambda function, can provide the same metadata when it
%% internally invokes `GetObject'. When `WriteGetObjectResponse' is
%% called by a customer-owned Lambda function, the metadata returned to the
%% end user `GetObject' call might differ from what Amazon S3 would
%% normally return.
%%
%% You can include any number of metadata headers. When including a metadata
%% header, it should be prefaced with `x-amz-meta'. For example,
%% `x-amz-meta-my-custom-header: MyCustomValue'. The primary use case for
%% this is to forward `GetObject' metadata.
%%
%% Amazon Web Services provides some prebuilt Lambda functions that you can
%% use with S3 Object Lambda to detect and redact personally identifiable
%% information (PII) and decompress S3 objects. These Lambda functions are
%% available in the Amazon Web Services Serverless Application Repository,
%% and can be selected through the Amazon Web Services Management Console
%% when you create your Object Lambda access point.
%%
%% Example 1: PII Access Control - This Lambda function uses Amazon
%% Comprehend, a natural language processing (NLP) service using machine
%% learning to find insights and relationships in text. It automatically
%% detects personally identifiable information (PII) such as names,
%% addresses, dates, credit card numbers, and social security numbers from
%% documents in your Amazon S3 bucket.
%%
%% Example 2: PII Redaction - This Lambda function uses Amazon Comprehend, a
%% natural language processing (NLP) service using machine learning to find
%% insights and relationships in text. It automatically redacts personally
%% identifiable information (PII) such as names, addresses, dates, credit
%% card numbers, and social security numbers from documents in your Amazon S3
%% bucket.
%%
%% Example 3: Decompression - The Lambda function
%% S3ObjectLambdaDecompression, is equipped to decompress objects stored in
%% S3 in one of six compressed file formats including bzip2, gzip, snappy,
%% zlib, zstandard and ZIP.
%%
%% For information on how to view and use these functions, see Using Amazon
%% Web Services built Lambda functions in the Amazon S3 User Guide.
write_get_object_response(Client, Input) ->
    write_get_object_response(Client, Input, []).
write_get_object_response(Client, Input0, Options0) ->
    Method = post,
    Path = ["/WriteGetObjectResponse"],
    Bucket = undefined,
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, true},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"x-amz-fwd-error-message">>, <<"ErrorMessage">>},
                       {<<"x-amz-fwd-header-x-amz-checksum-crc32c">>, <<"ChecksumCRC32C">>},
                       {<<"x-amz-fwd-header-x-amz-delete-marker">>, <<"DeleteMarker">>},
                       {<<"x-amz-fwd-header-x-amz-object-lock-retain-until-date">>, <<"ObjectLockRetainUntilDate">>},
                       {<<"x-amz-request-token">>, <<"RequestToken">>},
                       {<<"x-amz-fwd-header-x-amz-restore">>, <<"Restore">>},
                       {<<"x-amz-request-route">>, <<"RequestRoute">>},
                       {<<"x-amz-fwd-status">>, <<"StatusCode">>},
                       {<<"x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled">>, <<"BucketKeyEnabled">>},
                       {<<"x-amz-fwd-header-Content-Type">>, <<"ContentType">>},
                       {<<"x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
                       {<<"x-amz-fwd-header-x-amz-object-lock-legal-hold">>, <<"ObjectLockLegalHoldStatus">>},
                       {<<"x-amz-fwd-header-x-amz-version-id">>, <<"VersionId">>},
                       {<<"x-amz-fwd-header-accept-ranges">>, <<"AcceptRanges">>},
                       {<<"x-amz-fwd-header-Content-Language">>, <<"ContentLanguage">>},
                       {<<"x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-fwd-header-Content-Encoding">>, <<"ContentEncoding">>},
                       {<<"x-amz-fwd-header-x-amz-checksum-sha256">>, <<"ChecksumSHA256">>},
                       {<<"x-amz-fwd-header-ETag">>, <<"ETag">>},
                       {<<"x-amz-fwd-header-Last-Modified">>, <<"LastModified">>},
                       {<<"x-amz-fwd-error-code">>, <<"ErrorCode">>},
                       {<<"x-amz-fwd-header-Content-Range">>, <<"ContentRange">>},
                       {<<"x-amz-fwd-header-Expires">>, <<"Expires">>},
                       {<<"x-amz-fwd-header-x-amz-tagging-count">>, <<"TagCount">>},
                       {<<"x-amz-fwd-header-x-amz-expiration">>, <<"Expiration">>},
                       {<<"x-amz-fwd-header-x-amz-replication-status">>, <<"ReplicationStatus">>},
                       {<<"x-amz-fwd-header-Cache-Control">>, <<"CacheControl">>},
                       {<<"x-amz-fwd-header-x-amz-storage-class">>, <<"StorageClass">>},
                       {<<"x-amz-fwd-header-x-amz-missing-meta">>, <<"MissingMeta">>},
                       {<<"Content-Length">>, <<"ContentLength">>},
                       {<<"x-amz-fwd-header-x-amz-object-lock-mode">>, <<"ObjectLockMode">>},
                       {<<"x-amz-fwd-header-Content-Disposition">>, <<"ContentDisposition">>},
                       {<<"x-amz-fwd-header-x-amz-request-charged">>, <<"RequestCharged">>},
                       {<<"x-amz-fwd-header-x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
                       {<<"x-amz-fwd-header-x-amz-mp-parts-count">>, <<"PartsCount">>},
                       {<<"x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
                       {<<"x-amz-fwd-header-x-amz-checksum-crc32">>, <<"ChecksumCRC32">>},
                       {<<"x-amz-fwd-header-x-amz-checksum-sha1">>, <<"ChecksumSHA1">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeadersMapping = [
                             {<<"x-amz-meta-">>, <<"Metadata">>}
                          ],
    {CustomHeaders, Input2} = aws_request:build_custom_headers(CustomHeadersMapping, Input1),

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode, Bucket).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined, binary() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode, Bucket0) ->
  Bucket = case Bucket0 of
             undefined -> undefined;
             _ -> iolist_to_binary(Bucket0)
           end,
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode, Bucket) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode, Bucket) ->
    Client1 = Client#{service => <<"s3">>},
    Host = build_host(<<"s3">>, Client1, Bucket),
    URL0 = build_url(Host, Path, Client1, Bucket),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"text/xml">>}
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
                           aws_util:decode_xml(Body)
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
      DecodedError = aws_util:decode_xml(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.


build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}, undefined) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}, _Bucket) ->
    <<Endpoint/binary>>;
build_host(_EndpointPrefix, #{region := <<"local">>}, undefined) ->
    "localhost";
build_host(_EndpointPrefix, #{region := <<"local">>}, _Bucket) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}, undefined) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>);
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}, Bucket) ->
    aws_util:binary_join([Bucket, EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host0, Path0, Client, Bucket) ->
    Proto = aws_client:proto(Client),
    %% Mocks are notoriously bad with host-style requests, just skip it and use path-style for anything local
    %% At some points once the mocks catch up, we should remove this ugly hack...
    Host1 = erlang:iolist_to_binary(Host0),
    IsLocalHost = aws_client:region(Client) =:= <<"local">>,
    Path = case Bucket of
              _ when not IsLocalHost andalso Bucket =/= undefined ->
                erlang:iolist_to_binary(binary:replace(iolist_to_binary(Path0), [Bucket, <<Bucket/binary, "/">>], <<"">>, [global]));
              _ ->
                erlang:iolist_to_binary(Path0)
            end,
    Host = case Bucket of
             _ when not IsLocalHost andalso Bucket =/= undefined ->
               erlang:iolist_to_binary(string:replace(Host1, <<Bucket/binary, ".">>, <<"">>, all));
             _ ->
              Host1
           end,
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  aws_util:encode_xml(Input).
