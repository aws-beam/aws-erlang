%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <p/>
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
         delete_bucket_inventory_configuration/3,
         delete_bucket_inventory_configuration/4,
         delete_bucket_lifecycle/3,
         delete_bucket_lifecycle/4,
         delete_bucket_metrics_configuration/3,
         delete_bucket_metrics_configuration/4,
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
         get_bucket_accelerate_configuration/3,
         get_bucket_acl/2,
         get_bucket_acl/3,
         get_bucket_analytics_configuration/2,
         get_bucket_analytics_configuration/3,
         get_bucket_cors/2,
         get_bucket_cors/3,
         get_bucket_encryption/2,
         get_bucket_encryption/3,
         get_bucket_inventory_configuration/2,
         get_bucket_inventory_configuration/3,
         get_bucket_lifecycle/2,
         get_bucket_lifecycle/3,
         get_bucket_lifecycle_configuration/2,
         get_bucket_lifecycle_configuration/3,
         get_bucket_location/2,
         get_bucket_location/3,
         get_bucket_logging/2,
         get_bucket_logging/3,
         get_bucket_metrics_configuration/2,
         get_bucket_metrics_configuration/3,
         get_bucket_notification/2,
         get_bucket_notification/3,
         get_bucket_notification_configuration/2,
         get_bucket_notification_configuration/3,
         get_bucket_policy/2,
         get_bucket_policy/3,
         get_bucket_policy_status/2,
         get_bucket_policy_status/3,
         get_bucket_replication/2,
         get_bucket_replication/3,
         get_bucket_request_payment/2,
         get_bucket_request_payment/3,
         get_bucket_tagging/2,
         get_bucket_tagging/3,
         get_bucket_versioning/2,
         get_bucket_versioning/3,
         get_bucket_website/2,
         get_bucket_website/3,
         get_object/12,
         get_object/13,
         get_object_acl/4,
         get_object_acl/5,
         get_object_legal_hold/4,
         get_object_legal_hold/5,
         get_object_lock_configuration/2,
         get_object_lock_configuration/3,
         get_object_retention/4,
         get_object_retention/5,
         get_object_tagging/3,
         get_object_tagging/4,
         get_object_torrent/4,
         get_object_torrent/5,
         get_public_access_block/2,
         get_public_access_block/3,
         head_bucket/3,
         head_bucket/4,
         head_object/4,
         head_object/5,
         list_bucket_analytics_configurations/2,
         list_bucket_analytics_configurations/3,
         list_bucket_inventory_configurations/2,
         list_bucket_inventory_configurations/3,
         list_bucket_metrics_configurations/2,
         list_bucket_metrics_configurations/3,
         list_buckets/1,
         list_buckets/2,
         list_multipart_uploads/2,
         list_multipart_uploads/3,
         list_object_versions/2,
         list_object_versions/3,
         list_objects/3,
         list_objects/4,
         list_objects_v2/3,
         list_objects_v2/4,
         list_parts/4,
         list_parts/5,
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
         upload_part_copy/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This operation aborts a multipart upload. After a multipart upload is
%% aborted, no additional parts can be uploaded using that upload ID. The
%% storage consumed by any previously uploaded parts will be freed. However,
%% if any part uploads are currently in progress, those part uploads might or
%% might not succeed. As a result, it might be necessary to abort a given
%% multipart upload multiple times in order to completely free all storage
%% consumed by all parts.
%%
%% To verify that all parts have been removed, so you don't get charged for
%% the part storage, you should call the <a>ListParts</a> operation and
%% ensure that the parts list is empty.
%%
%% For information about permissions required to use the multipart upload
%% API, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
%% Upload API and Permissions</a>.
%%
%% The following operations are related to <code>AbortMultipartUpload</code>:
%%
%% <ul> <li> <a>CreateMultipartUpload</a>
%%
%% </li> <li> <a>UploadPart</a>
%%
%% </li> <li> <a>CompleteMultipartUpload</a>
%%
%% </li> <li> <a>ListParts</a>
%%
%% </li> <li> <a>ListMultipartUploads</a>
%%
%% </li> </ul>
abort_multipart_upload(Client, Bucket, Key, Input) ->
    abort_multipart_upload(Client, Bucket, Key, Input, []).
abort_multipart_upload(Client, Bucket, Key, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
%% the <a>UploadPart</a> operation. After successfully uploading all relevant
%% parts of an upload, you call this operation to complete the upload. Upon
%% receiving this request, Amazon S3 concatenates all the parts in ascending
%% order by part number to create a new object. In the Complete Multipart
%% Upload request, you must provide the parts list. You must ensure that the
%% parts list is complete. This operation concatenates the parts that you
%% provide in the list. For each part in the list, you must provide the part
%% number and the <code>ETag</code> value, returned after that part was
%% uploaded.
%%
%% Processing of a Complete Multipart Upload request could take several
%% minutes to complete. After Amazon S3 begins processing the request, it
%% sends an HTTP response header that specifies a 200 OK response. While
%% processing is in progress, Amazon S3 periodically sends white space
%% characters to keep the connection from timing out. Because a request could
%% fail after the initial 200 OK response has been sent, it is important that
%% you check the response body to determine whether the request succeeded.
%%
%% Note that if <code>CompleteMultipartUpload</code> fails, applications
%% should be prepared to retry the failed requests. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ErrorBestPractices.html">Amazon
%% S3 Error Best Practices</a>.
%%
%% For more information about multipart uploads, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading
%% Objects Using Multipart Upload</a>.
%%
%% For information about permissions required to use the multipart upload
%% API, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
%% Upload API and Permissions</a>.
%%
%% <code>GetBucketLifecycle</code> has the following special errors:
%%
%% <ul> <li> Error code: <code>EntityTooSmall</code>
%%
%% <ul> <li> Description: Your proposed upload is smaller than the minimum
%% allowed object size. Each part must be at least 5 MB in size, except the
%% last part.
%%
%% </li> <li> 400 Bad Request
%%
%% </li> </ul> </li> <li> Error code: <code>InvalidPart</code>
%%
%% <ul> <li> Description: One or more of the specified parts could not be
%% found. The part might not have been uploaded, or the specified entity tag
%% might not have matched the part's entity tag.
%%
%% </li> <li> 400 Bad Request
%%
%% </li> </ul> </li> <li> Error code: <code>InvalidPartOrder</code>
%%
%% <ul> <li> Description: The list of parts was not in ascending order. The
%% parts list must be specified in order by part number.
%%
%% </li> <li> 400 Bad Request
%%
%% </li> </ul> </li> <li> Error code: <code>NoSuchUpload</code>
%%
%% <ul> <li> Description: The specified multipart upload does not exist. The
%% upload ID might be invalid, or the multipart upload might have been
%% aborted or completed.
%%
%% </li> <li> 404 Not Found
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% <code>CompleteMultipartUpload</code>:
%%
%% <ul> <li> <a>CreateMultipartUpload</a>
%%
%% </li> <li> <a>UploadPart</a>
%%
%% </li> <li> <a>AbortMultipartUpload</a>
%%
%% </li> <li> <a>ListParts</a>
%%
%% </li> <li> <a>ListMultipartUploads</a>
%%
%% </li> </ul>
complete_multipart_upload(Client, Bucket, Key, Input) ->
    complete_multipart_upload(Client, Bucket, Key, Input, []).
complete_multipart_upload(Client, Bucket, Key, Input0, Options) ->
    Method = post,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
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
%% <note> You can store individual objects of up to 5 TB in Amazon S3. You
%% create a copy of your object up to 5 GB in size in a single atomic
%% operation using this API. However, to copy an object greater than 5 GB,
%% you must use the multipart upload Upload Part - Copy API. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html">Copy
%% Object Using the REST Multipart Upload API</a>.
%%
%% </note> All copy requests must be authenticated. Additionally, you must
%% have <i>read</i> access to the source object and <i>write</i> access to
%% the destination bucket. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST
%% Authentication</a>. Both the Region that you want to copy the object from
%% and the Region that you want to copy the object to must be enabled for
%% your account.
%%
%% A copy request might return an error when Amazon S3 receives the copy
%% request or while Amazon S3 is copying the files. If the error occurs
%% before the copy operation starts, you receive a standard Amazon S3 error.
%% If the error occurs during the copy operation, the error response is
%% embedded in the <code>200 OK</code> response. This means that a <code>200
%% OK</code> response can contain either a success or an error. Design your
%% application to parse the contents of the response and handle it
%% appropriately.
%%
%% If the copy is successful, you receive a response with information about
%% the copied object.
%%
%% <note> If the request is an HTTP 1.1 request, the response is chunk
%% encoded. If it were not, it would not contain the content-length, and you
%% would need to read the entire body.
%%
%% </note> The copy request charge is based on the storage class and Region
%% that you specify for the destination object. For pricing information, see
%% <a href="https://aws.amazon.com/s3/pricing/">Amazon S3 pricing</a>.
%%
%% <important> Amazon S3 transfer acceleration does not support cross-Region
%% copies. If you request a cross-Region copy using a transfer acceleration
%% endpoint, you get a 400 <code>Bad Request</code> error. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Transfer
%% Acceleration</a>.
%%
%% </important> <b>Metadata</b>
%%
%% When copying an object, you can preserve all metadata (default) or specify
%% new metadata. However, the ACL is not preserved and is set to private for
%% the user making the request. To override the default ACL setting, specify
%% a new ACL when generating a copy request. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using
%% ACLs</a>.
%%
%% To specify whether you want the object metadata copied from the source
%% object or replaced with metadata provided in the request, you can
%% optionally add the <code>x-amz-metadata-directive</code> header. When you
%% grant permissions, you can use the
%% <code>s3:x-amz-metadata-directive</code> condition key to enforce certain
%% metadata behavior when objects are uploaded. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html">Specifying
%% Conditions in a Policy</a> in the <i>Amazon S3 Developer Guide</i>. For a
%% complete list of Amazon S3-specific condition keys, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html">Actions,
%% Resources, and Condition Keys for Amazon S3</a>.
%%
%% <b> <code>x-amz-copy-source-if</code> Headers</b>
%%
%% To only copy an object under certain conditions, such as whether the
%% <code>Etag</code> matches or whether the object was modified before or
%% after a specified date, use the following request parameters:
%%
%% <ul> <li> <code>x-amz-copy-source-if-match</code>
%%
%% </li> <li> <code>x-amz-copy-source-if-none-match</code>
%%
%% </li> <li> <code>x-amz-copy-source-if-unmodified-since</code>
%%
%% </li> <li> <code>x-amz-copy-source-if-modified-since</code>
%%
%% </li> </ul> If both the <code>x-amz-copy-source-if-match</code> and
%% <code>x-amz-copy-source-if-unmodified-since</code> headers are present in
%% the request and evaluate as follows, Amazon S3 returns <code>200 OK</code>
%% and copies the data:
%%
%% <ul> <li> <code>x-amz-copy-source-if-match</code> condition evaluates to
%% true
%%
%% </li> <li> <code>x-amz-copy-source-if-unmodified-since</code> condition
%% evaluates to false
%%
%% </li> </ul> If both the <code>x-amz-copy-source-if-none-match</code> and
%% <code>x-amz-copy-source-if-modified-since</code> headers are present in
%% the request and evaluate as follows, Amazon S3 returns the <code>412
%% Precondition Failed</code> response code:
%%
%% <ul> <li> <code>x-amz-copy-source-if-none-match</code> condition evaluates
%% to false
%%
%% </li> <li> <code>x-amz-copy-source-if-modified-since</code> condition
%% evaluates to true
%%
%% </li> </ul> <note> All headers with the <code>x-amz-</code> prefix,
%% including <code>x-amz-copy-source</code>, must be signed.
%%
%% </note> <b>Encryption</b>
%%
%% The source object that you are copying can be encrypted or unencrypted.
%% The source object can be encrypted with server-side encryption using AWS
%% managed encryption keys (SSE-S3 or SSE-KMS) or by using a
%% customer-provided encryption key. With server-side encryption, Amazon S3
%% encrypts your data as it writes it to disks in its data centers and
%% decrypts the data when you access it.
%%
%% You can optionally use the appropriate encryption-related headers to
%% request server-side encryption for the target object. You have the option
%% to provide your own encryption key or use SSE-S3 or SSE-KMS, regardless of
%% the form of server-side encryption that was used to encrypt the source
%% object. You can even request encryption if the source object was not
%% encrypted. For more information about server-side encryption, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Using
%% Server-Side Encryption</a>.
%%
%% <b>Access Control List (ACL)-Specific Request Headers</b>
%%
%% When copying an object, you can optionally use headers to grant ACL-based
%% permissions. By default, all objects are private. Only the owner has full
%% access control. When adding a new object, you can grant permissions to
%% individual AWS accounts or to predefined groups defined by Amazon S3.
%% These permissions are then added to the ACL on the object. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access
%% Control List (ACL) Overview</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html">Managing
%% ACLs Using the REST API</a>.
%%
%% <b>Storage Class Options</b>
%%
%% You can use the <code>CopyObject</code> operation to change the storage
%% class of an object that is already stored in Amazon S3 using the
%% <code>StorageClass</code> parameter. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage
%% Classes</a> in the <i>Amazon S3 Service Developer Guide</i>.
%%
%% <b>Versioning</b>
%%
%% By default, <code>x-amz-copy-source</code> identifies the current version
%% of an object to copy. If the current version is a delete marker, Amazon S3
%% behaves as if the object was deleted. To copy a different version, use the
%% <code>versionId</code> subresource.
%%
%% If you enable versioning on the target bucket, Amazon S3 generates a
%% unique version ID for the object being copied. This version ID is
%% different from the version ID of the source object. Amazon S3 returns the
%% version ID of the copied object in the <code>x-amz-version-id</code>
%% response header in the response.
%%
%% If you do not enable versioning or suspend it on the target bucket, the
%% version ID that Amazon S3 generates is always null.
%%
%% If the source object's storage class is GLACIER, you must restore a copy
%% of this object before you can use it as a source object for the copy
%% operation. For more information, see .
%%
%% The following operations are related to <code>CopyObject</code>:
%%
%% <ul> <li> <a>PutObject</a>
%%
%% </li> <li> <a>GetObject</a>
%%
%% </li> </ul> For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html">Copying
%% Objects</a>.
copy_object(Client, Bucket, Key, Input) ->
    copy_object(Client, Bucket, Key, Input, []).
copy_object(Client, Bucket, Key, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-copy-source-if-modified-since">>, <<"CopySourceIfModifiedSince">>},
                       {<<"Content-Language">>, <<"ContentLanguage">>},
                       {<<"Expires">>, <<"Expires">>},
                       {<<"x-amz-copy-source-server-side-encryption-customer-key-MD5">>, <<"CopySourceSSECustomerKeyMD5">>},
                       {<<"x-amz-object-lock-legal-hold">>, <<"ObjectLockLegalHoldStatus">>},
                       {<<"x-amz-copy-source-server-side-encryption-customer-key">>, <<"CopySourceSSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
                       {<<"x-amz-object-lock-retain-until-date">>, <<"ObjectLockRetainUntilDate">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"Content-Disposition">>, <<"ContentDisposition">>},
                       {<<"Content-Encoding">>, <<"ContentEncoding">>},
                       {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
                       {<<"x-amz-tagging">>, <<"Tagging">>},
                       {<<"x-amz-storage-class">>, <<"StorageClass">>},
                       {<<"x-amz-copy-source-if-unmodified-since">>, <<"CopySourceIfUnmodifiedSince">>},
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"Content-Type">>, <<"ContentType">>},
                       {<<"x-amz-copy-source">>, <<"CopySource">>},
                       {<<"x-amz-object-lock-mode">>, <<"ObjectLockMode">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
                       {<<"Cache-Control">>, <<"CacheControl">>},
                       {<<"x-amz-tagging-directive">>, <<"TaggingDirective">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-website-redirect-location">>, <<"WebsiteRedirectLocation">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-copy-source-server-side-encryption-customer-algorithm">>, <<"CopySourceSSECustomerAlgorithm">>},
                       {<<"x-amz-copy-source-if-match">>, <<"CopySourceIfMatch">>},
                       {<<"x-amz-metadata-directive">>, <<"MetadataDirective">>},
                       {<<"x-amz-copy-source-if-none-match">>, <<"CopySourceIfNoneMatch">>},
                       {<<"x-amz-server-side-encryption-context">>, <<"SSEKMSEncryptionContext">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
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

%% @doc Creates a new bucket. To create a bucket, you must register with
%% Amazon S3 and have a valid AWS Access Key ID to authenticate requests.
%% Anonymous requests are never allowed to create buckets. By creating the
%% bucket, you become the bucket owner.
%%
%% Not every string is an acceptable bucket name. For information on bucket
%% naming restrictions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html">Working
%% with Amazon S3 Buckets</a>.
%%
%% By default, the bucket is created in the US East (N. Virginia) Region. You
%% can optionally specify a Region in the request body. You might choose a
%% Region to optimize latency, minimize costs, or address regulatory
%% requirements. For example, if you reside in Europe, you will probably find
%% it advantageous to create buckets in the Europe (Ireland) Region. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro">How
%% to Select a Region for Your Buckets</a>.
%%
%% <note> If you send your create bucket request to the
%% <code>s3.amazonaws.com</code> endpoint, the request goes to the us-east-1
%% Region. Accordingly, the signature calculations in Signature Version 4
%% must use us-east-1 as the Region, even if the location constraint in the
%% request specifies another Region where the bucket is to be created. If you
%% create a bucket in a Region other than US East (N. Virginia), your
%% application must be able to handle 307 redirect. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html">Virtual
%% Hosting of Buckets</a>.
%%
%% </note> When creating a bucket using this operation, you can optionally
%% specify the accounts or groups that should be granted specific permissions
%% on the bucket. There are two ways to grant the appropriate permissions
%% using the request headers.
%%
%% <ul> <li> Specify a canned ACL using the <code>x-amz-acl</code> request
%% header. Amazon S3 supports a set of predefined ACLs, known as <i>canned
%% ACLs</i>. Each canned ACL has a predefined set of grantees and
%% permissions. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
%% ACL</a>.
%%
%% </li> <li> Specify access permissions explicitly using the
%% <code>x-amz-grant-read</code>, <code>x-amz-grant-write</code>,
%% <code>x-amz-grant-read-acp</code>, <code>x-amz-grant-write-acp</code>, and
%% <code>x-amz-grant-full-control</code> headers. These headers map to the
%% set of permissions Amazon S3 supports in an ACL. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access
%% Control List (ACL) Overview</a>.
%%
%% You specify each grantee as a type=value pair, where the type is one of
%% the following:
%%
%% <ul> <li> <code>id</code> – if the value specified is the canonical user
%% ID of an AWS account
%%
%% </li> <li> <code>uri</code> – if you are granting permissions to a
%% predefined group
%%
%% </li> <li> <code>emailAddress</code> – if the value specified is the email
%% address of an AWS account
%%
%% <note> Using email addresses to specify a grantee is only supported in the
%% following AWS Regions:
%%
%% <ul> <li> US East (N. Virginia)
%%
%% </li> <li> US West (N. California)
%%
%% </li> <li> US West (Oregon)
%%
%% </li> <li> Asia Pacific (Singapore)
%%
%% </li> <li> Asia Pacific (Sydney)
%%
%% </li> <li> Asia Pacific (Tokyo)
%%
%% </li> <li> Europe (Ireland)
%%
%% </li> <li> South America (São Paulo)
%%
%% </li> </ul> For a list of all the Amazon S3 supported Regions and
%% endpoints, see <a
%% href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions
%% and Endpoints</a> in the AWS General Reference.
%%
%% </note> </li> </ul> For example, the following
%% <code>x-amz-grant-read</code> header grants the AWS accounts identified by
%% account IDs permissions to read object data and its metadata:
%%
%% <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
%%
%% </li> </ul> <note> You can use either a canned ACL or specify access
%% permissions explicitly. You cannot do both.
%%
%% </note> The following operations are related to <code>CreateBucket</code>:
%%
%% <ul> <li> <a>PutObject</a>
%%
%% </li> <li> <a>DeleteBucket</a>
%%
%% </li> </ul>
create_bucket(Client, Bucket, Input) ->
    create_bucket(Client, Bucket, Input, []).
create_bucket(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), ""],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-write">>, <<"GrantWrite">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-bucket-object-lock-enabled">>, <<"ObjectLockEnabledForBucket">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc This operation initiates a multipart upload and returns an upload ID.
%% This upload ID is used to associate all of the parts in the specific
%% multipart upload. You specify this upload ID in each of your subsequent
%% upload part requests (see <a>UploadPart</a>). You also include this upload
%% ID in the final request to either complete or abort the multipart upload
%% request.
%%
%% For more information about multipart uploads, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart
%% Upload Overview</a>.
%%
%% If you have configured a lifecycle rule to abort incomplete multipart
%% uploads, the upload must complete within the number of days specified in
%% the bucket lifecycle configuration. Otherwise, the incomplete multipart
%% upload becomes eligible for an abort operation and Amazon S3 aborts the
%% multipart upload. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">Aborting
%% Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a>.
%%
%% For information about the permissions required to use the multipart upload
%% API, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
%% Upload API and Permissions</a>.
%%
%% For request signing, multipart upload is just a series of regular
%% requests. You initiate a multipart upload, send one or more requests to
%% upload parts, and then complete the multipart upload process. You sign
%% each request individually. There is nothing special about signing
%% multipart upload requests. For more information about signing, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating
%% Requests (AWS Signature Version 4)</a>.
%%
%% <note> After you initiate a multipart upload and upload one or more parts,
%% to stop being charged for storing the uploaded parts, you must either
%% complete or abort the multipart upload. Amazon S3 frees up the space used
%% to store the parts and stop charging you for storing them only after you
%% either complete or abort a multipart upload.
%%
%% </note> You can optionally request server-side encryption. For server-side
%% encryption, Amazon S3 encrypts your data as it writes it to disks in its
%% data centers and decrypts it when you access it. You can provide your own
%% encryption key, or use AWS Key Management Service (AWS KMS) customer
%% master keys (CMKs) or Amazon S3-managed encryption keys. If you choose to
%% provide your own encryption key, the request headers you provide in
%% <a>UploadPart</a>) and <a>UploadPartCopy</a>) requests must match the
%% headers you used in the request to initiate the upload by using
%% <code>CreateMultipartUpload</code>.
%%
%% To perform a multipart upload with encryption using an AWS KMS CMK, the
%% requester must have permission to the <code>kms:Encrypt</code>,
%% <code>kms:Decrypt</code>, <code>kms:ReEncrypt*</code>,
%% <code>kms:GenerateDataKey*</code>, and <code>kms:DescribeKey</code>
%% actions on the key. These permissions are required because Amazon S3 must
%% decrypt and read data from the encrypted file parts before it completes
%% the multipart upload.
%%
%% If your AWS Identity and Access Management (IAM) user or role is in the
%% same AWS account as the AWS KMS CMK, then you must have these permissions
%% on the key policy. If your IAM user or role belongs to a different account
%% than the key, then you must have the permissions on both the key policy
%% and your IAM user or role.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Protecting
%% Data Using Server-Side Encryption</a>.
%%
%% <dl> <dt>Access Permissions</dt> <dd> When copying an object, you can
%% optionally specify the accounts or groups that should be granted specific
%% permissions on the new object. There are two ways to grant the permissions
%% using the request headers:
%%
%% <ul> <li> Specify a canned ACL with the <code>x-amz-acl</code> request
%% header. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
%% ACL</a>.
%%
%% </li> <li> Specify access permissions explicitly with the
%% <code>x-amz-grant-read</code>, <code>x-amz-grant-read-acp</code>,
%% <code>x-amz-grant-write-acp</code>, and
%% <code>x-amz-grant-full-control</code> headers. These parameters map to the
%% set of permissions that Amazon S3 supports in an ACL. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access
%% Control List (ACL) Overview</a>.
%%
%% </li> </ul> You can use either a canned ACL or specify access permissions
%% explicitly. You cannot do both.
%%
%% </dd> <dt>Server-Side- Encryption-Specific Request Headers</dt> <dd> You
%% can optionally tell Amazon S3 to encrypt data at rest using server-side
%% encryption. Server-side encryption is for data encryption at rest. Amazon
%% S3 encrypts your data as it writes it to disks in its data centers and
%% decrypts it when you access it. The option you use depends on whether you
%% want to use AWS managed encryption keys or provide your own encryption
%% key.
%%
%% <ul> <li> Use encryption keys managed by Amazon S3 or customer master keys
%% (CMKs) stored in AWS Key Management Service (AWS KMS) – If you want AWS to
%% manage the keys used to encrypt data, specify the following headers in the
%% request.
%%
%% <ul> <li> x-amz-server-side​-encryption
%%
%% </li> <li> x-amz-server-side-encryption-aws-kms-key-id
%%
%% </li> <li> x-amz-server-side-encryption-context
%%
%% </li> </ul> <note> If you specify
%% <code>x-amz-server-side-encryption:aws:kms</code>, but don't provide
%% <code>x-amz-server-side-encryption-aws-kms-key-id</code>, Amazon S3 uses
%% the AWS managed CMK in AWS KMS to protect the data.
%%
%% </note> <important> All GET and PUT requests for an object protected by
%% AWS KMS fail if you don't make them with SSL or by using SigV4.
%%
%% </important> For more information about server-side encryption with CMKs
%% stored in AWS KMS (SSE-KMS), see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html">Protecting
%% Data Using Server-Side Encryption with CMKs stored in AWS KMS</a>.
%%
%% </li> <li> Use customer-provided encryption keys – If you want to manage
%% your own encryption keys, provide all the following headers in the
%% request.
%%
%% <ul> <li> x-amz-server-side​-encryption​-customer-algorithm
%%
%% </li> <li> x-amz-server-side​-encryption​-customer-key
%%
%% </li> <li> x-amz-server-side​-encryption​-customer-key-MD5
%%
%% </li> </ul> For more information about server-side encryption with CMKs
%% stored in AWS KMS (SSE-KMS), see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html">Protecting
%% Data Using Server-Side Encryption with CMKs stored in AWS KMS</a>.
%%
%% </li> </ul> </dd> <dt>Access-Control-List (ACL)-Specific Request
%% Headers</dt> <dd> You also can use the following access control–related
%% headers with this operation. By default, all objects are private. Only the
%% owner has full access control. When adding a new object, you can grant
%% permissions to individual AWS accounts or to predefined groups defined by
%% Amazon S3. These permissions are then added to the access control list
%% (ACL) on the object. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using
%% ACLs</a>. With this operation, you can grant access permissions using one
%% of the following two methods:
%%
%% <ul> <li> Specify a canned ACL (<code>x-amz-acl</code>) — Amazon S3
%% supports a set of predefined ACLs, known as <i>canned ACLs</i>. Each
%% canned ACL has a predefined set of grantees and permissions. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
%% ACL</a>.
%%
%% </li> <li> Specify access permissions explicitly — To explicitly grant
%% access permissions to specific AWS accounts or groups, use the following
%% headers. Each header maps to specific permissions that Amazon S3 supports
%% in an ACL. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access
%% Control List (ACL) Overview</a>. In the header, you specify a list of
%% grantees who get the specific permission. To grant permissions explicitly,
%% use:
%%
%% <ul> <li> x-amz-grant-read
%%
%% </li> <li> x-amz-grant-write
%%
%% </li> <li> x-amz-grant-read-acp
%%
%% </li> <li> x-amz-grant-write-acp
%%
%% </li> <li> x-amz-grant-full-control
%%
%% </li> </ul> You specify each grantee as a type=value pair, where the type
%% is one of the following:
%%
%% <ul> <li> <code>id</code> – if the value specified is the canonical user
%% ID of an AWS account
%%
%% </li> <li> <code>uri</code> – if you are granting permissions to a
%% predefined group
%%
%% </li> <li> <code>emailAddress</code> – if the value specified is the email
%% address of an AWS account
%%
%% <note> Using email addresses to specify a grantee is only supported in the
%% following AWS Regions:
%%
%% <ul> <li> US East (N. Virginia)
%%
%% </li> <li> US West (N. California)
%%
%% </li> <li> US West (Oregon)
%%
%% </li> <li> Asia Pacific (Singapore)
%%
%% </li> <li> Asia Pacific (Sydney)
%%
%% </li> <li> Asia Pacific (Tokyo)
%%
%% </li> <li> Europe (Ireland)
%%
%% </li> <li> South America (São Paulo)
%%
%% </li> </ul> For a list of all the Amazon S3 supported Regions and
%% endpoints, see <a
%% href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions
%% and Endpoints</a> in the AWS General Reference.
%%
%% </note> </li> </ul> For example, the following
%% <code>x-amz-grant-read</code> header grants the AWS accounts identified by
%% account IDs permissions to read object data and its metadata:
%%
%% <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
%%
%% </li> </ul> </dd> </dl> The following operations are related to
%% <code>CreateMultipartUpload</code>:
%%
%% <ul> <li> <a>UploadPart</a>
%%
%% </li> <li> <a>CompleteMultipartUpload</a>
%%
%% </li> <li> <a>AbortMultipartUpload</a>
%%
%% </li> <li> <a>ListParts</a>
%%
%% </li> <li> <a>ListMultipartUploads</a>
%%
%% </li> </ul>
create_multipart_upload(Client, Bucket, Key, Input) ->
    create_multipart_upload(Client, Bucket, Key, Input, []).
create_multipart_upload(Client, Bucket, Key, Input0, Options) ->
    Method = post,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?uploads"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"Cache-Control">>, <<"CacheControl">>},
                       {<<"Content-Disposition">>, <<"ContentDisposition">>},
                       {<<"Content-Encoding">>, <<"ContentEncoding">>},
                       {<<"Content-Language">>, <<"ContentLanguage">>},
                       {<<"Content-Type">>, <<"ContentType">>},
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
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amz-abort-date">>, <<"AbortDate">>},
            {<<"x-amz-abort-rule-id">>, <<"AbortRuleId">>},
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

%% @doc Deletes the bucket. All objects (including all object versions and
%% delete markers) in the bucket must be deleted before the bucket itself can
%% be deleted.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li>
%%
%% </li> <li>
%%
%% </li> </ul>
delete_bucket(Client, Bucket, Input) ->
    delete_bucket(Client, Bucket, Input, []).
delete_bucket(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), ""],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an analytics configuration for the bucket (specified by the
%% analytics configuration ID).
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:PutAnalyticsConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% For information about the Amazon S3 analytics feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html">Amazon
%% S3 Analytics – Storage Class Analysis</a>.
%%
%% The following operations are related to
%% <code>DeleteBucketAnalyticsConfiguration</code>:
%%
%% <ul> <li>
%%
%% </li> <li>
%%
%% </li> <li>
%%
%% </li> </ul>
delete_bucket_analytics_configuration(Client, Bucket, Input) ->
    delete_bucket_analytics_configuration(Client, Bucket, Input, []).
delete_bucket_analytics_configuration(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?analytics"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the <code>cors</code> configuration information set for the
%% bucket.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:PutBucketCORS</code> action. The bucket owner has this permission
%% by default and can grant this permission to others.
%%
%% For information about <code>cors</code>, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling
%% Cross-Origin Resource Sharing</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
%%
%% <p class="title"> <b>Related Resources:</b>
%%
%% <ul> <li>
%%
%% </li> <li> <a>RESTOPTIONSobject</a>
%%
%% </li> </ul>
delete_bucket_cors(Client, Bucket, Input) ->
    delete_bucket_cors(Client, Bucket, Input, []).
delete_bucket_cors(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?cors"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc This implementation of the DELETE operation removes default
%% encryption from the bucket. For information about the Amazon S3 default
%% encryption feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon
%% S3 Default Bucket Encryption</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:PutEncryptionConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to your Amazon S3 Resources</a> in the <i>Amazon Simple
%% Storage Service Developer Guide</i>.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>PutBucketEncryption</a>
%%
%% </li> <li> <a>GetBucketEncryption</a>
%%
%% </li> </ul>
delete_bucket_encryption(Client, Bucket, Input) ->
    delete_bucket_encryption(Client, Bucket, Input, []).
delete_bucket_encryption(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?encryption"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an inventory configuration (identified by the inventory ID)
%% from the bucket.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:PutInventoryConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% For information about the Amazon S3 inventory feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html">Amazon
%% S3 Inventory</a>.
%%
%% Operations related to <code>DeleteBucketInventoryConfiguration</code>
%% include:
%%
%% <ul> <li> <a>GetBucketInventoryConfiguration</a>
%%
%% </li> <li> <a>PutBucketInventoryConfiguration</a>
%%
%% </li> <li> <a>ListBucketInventoryConfigurations</a>
%%
%% </li> </ul>
delete_bucket_inventory_configuration(Client, Bucket, Input) ->
    delete_bucket_inventory_configuration(Client, Bucket, Input, []).
delete_bucket_inventory_configuration(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?inventory"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the lifecycle configuration from the specified bucket. Amazon
%% S3 removes all the lifecycle configuration rules in the lifecycle
%% subresource associated with the bucket. Your objects never expire, and
%% Amazon S3 no longer automatically deletes any objects on the basis of
%% rules contained in the deleted lifecycle configuration.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:PutLifecycleConfiguration</code> action. By default, the bucket
%% owner has this permission and the bucket owner can grant this permission
%% to others.
%%
%% There is usually some time lag before lifecycle configuration deletion is
%% fully propagated to all the Amazon S3 systems.
%%
%% For more information about the object expiration, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions">Elements
%% to Describe Lifecycle Actions</a>.
%%
%% Related actions include:
%%
%% <ul> <li> <a>PutBucketLifecycleConfiguration</a>
%%
%% </li> <li> <a>GetBucketLifecycleConfiguration</a>
%%
%% </li> </ul>
delete_bucket_lifecycle(Client, Bucket, Input) ->
    delete_bucket_lifecycle(Client, Bucket, Input, []).
delete_bucket_lifecycle(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?lifecycle"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a metrics configuration for the Amazon CloudWatch request
%% metrics (specified by the metrics configuration ID) from the bucket. Note
%% that this doesn't include the daily storage metrics.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:PutMetricsConfiguration</code> action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% For information about CloudWatch request metrics for Amazon S3, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring
%% Metrics with Amazon CloudWatch</a>.
%%
%% The following operations are related to
%% <code>DeleteBucketMetricsConfiguration</code>:
%%
%% <ul> <li> <a>GetBucketMetricsConfiguration</a>
%%
%% </li> <li> <a>PutBucketMetricsConfiguration</a>
%%
%% </li> <li> <a>ListBucketMetricsConfigurations</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring
%% Metrics with Amazon CloudWatch</a>
%%
%% </li> </ul>
delete_bucket_metrics_configuration(Client, Bucket, Input) ->
    delete_bucket_metrics_configuration(Client, Bucket, Input, []).
delete_bucket_metrics_configuration(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?metrics"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc This implementation of the DELETE operation uses the policy
%% subresource to delete the policy of a specified bucket. If you are using
%% an identity other than the root user of the AWS account that owns the
%% bucket, the calling identity must have the <code>DeleteBucketPolicy</code>
%% permissions on the specified bucket and belong to the bucket owner's
%% account to use this operation.
%%
%% If you don't have <code>DeleteBucketPolicy</code> permissions, Amazon S3
%% returns a <code>403 Access Denied</code> error. If you have the correct
%% permissions, but you're not using an identity that belongs to the bucket
%% owner's account, Amazon S3 returns a <code>405 Method Not Allowed</code>
%% error.
%%
%% <important> As a security precaution, the root user of the AWS account
%% that owns a bucket can always use this operation, even if the policy
%% explicitly denies the root user the ability to perform this action.
%%
%% </important> For more information about bucket policies, see <a href="
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using
%% Bucket Policies and UserPolicies</a>.
%%
%% The following operations are related to <code>DeleteBucketPolicy</code>
%%
%% <ul> <li> <a>CreateBucket</a>
%%
%% </li> <li> <a>DeleteObject</a>
%%
%% </li> </ul>
delete_bucket_policy(Client, Bucket, Input) ->
    delete_bucket_policy(Client, Bucket, Input, []).
delete_bucket_policy(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?policy"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the replication configuration from the bucket.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:PutReplicationConfiguration</code> action. The bucket owner has
%% these permissions by default and can grant it to others. For more
%% information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% <note> It can take a while for the deletion of a replication configuration
%% to fully propagate.
%%
%% </note> For information about replication configuration, see <a href="
%% https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a>
%% in the <i>Amazon S3 Developer Guide</i>.
%%
%% The following operations are related to
%% <code>DeleteBucketReplication</code>:
%%
%% <ul> <li> <a>PutBucketReplication</a>
%%
%% </li> <li> <a>GetBucketReplication</a>
%%
%% </li> </ul>
delete_bucket_replication(Client, Bucket, Input) ->
    delete_bucket_replication(Client, Bucket, Input, []).
delete_bucket_replication(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?replication"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the tags from the bucket.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:PutBucketTagging</code> action. By default, the bucket owner has
%% this permission and can grant this permission to others.
%%
%% The following operations are related to <code>DeleteBucketTagging</code>:
%%
%% <ul> <li> <a>GetBucketTagging</a>
%%
%% </li> <li> <a>PutBucketTagging</a>
%%
%% </li> </ul>
delete_bucket_tagging(Client, Bucket, Input) ->
    delete_bucket_tagging(Client, Bucket, Input, []).
delete_bucket_tagging(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?tagging"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc This operation removes the website configuration for a bucket. Amazon
%% S3 returns a <code>200 OK</code> response upon successfully deleting a
%% website configuration on the specified bucket. You will get a <code>200
%% OK</code> response if the website configuration you are trying to delete
%% does not exist on the bucket. Amazon S3 returns a <code>404</code>
%% response if the bucket specified in the request does not exist.
%%
%% This DELETE operation requires the <code>S3:DeleteBucketWebsite</code>
%% permission. By default, only the bucket owner can delete the website
%% configuration attached to a bucket. However, bucket owners can grant other
%% users permission to delete the website configuration by writing a bucket
%% policy granting them the <code>S3:DeleteBucketWebsite</code> permission.
%%
%% For more information about hosting websites, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting
%% Websites on Amazon S3</a>.
%%
%% The following operations are related to <code>DeleteBucketWebsite</code>:
%%
%% <ul> <li> <a>GetBucketWebsite</a>
%%
%% </li> <li> <a>PutBucketWebsite</a>
%%
%% </li> </ul>
delete_bucket_website(Client, Bucket, Input) ->
    delete_bucket_website(Client, Bucket, Input, []).
delete_bucket_website(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?website"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the null version (if there is one) of an object and inserts a
%% delete marker, which becomes the latest version of the object. If there
%% isn't a null version, Amazon S3 does not remove any objects.
%%
%% To remove a specific version, you must be the bucket owner and you must
%% use the version Id subresource. Using this subresource permanently deletes
%% the version. If the object deleted is a delete marker, Amazon S3 sets the
%% response header, <code>x-amz-delete-marker</code>, to true.
%%
%% If the object you want to delete is in a bucket where the bucket
%% versioning configuration is MFA Delete enabled, you must include the
%% <code>x-amz-mfa</code> request header in the DELETE <code>versionId</code>
%% request. Requests that include <code>x-amz-mfa</code> must use HTTPS.
%%
%% For more information about MFA Delete, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMFADelete.html">Using
%% MFA Delete</a>. To see sample requests that use versioning, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectDELETE.html#ExampleVersionObjectDelete">Sample
%% Request</a>.
%%
%% You can delete objects by explicitly calling the DELETE Object API or
%% configure its lifecycle (<a>PutBucketLifecycle</a>) to enable Amazon S3 to
%% remove them for you. If you want to block users or accounts from removing
%% or deleting objects from your bucket, you must deny them the
%% <code>s3:DeleteObject</code>, <code>s3:DeleteObjectVersion</code>, and
%% <code>s3:PutLifeCycleConfiguration</code> actions.
%%
%% The following operation is related to <code>DeleteObject</code>:
%%
%% <ul> <li> <a>PutObject</a>
%%
%% </li> </ul>
delete_object(Client, Bucket, Key, Input) ->
    delete_object(Client, Bucket, Key, Input, []).
delete_object(Client, Bucket, Key, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = 204,
    
    HeadersMapping = [
                       {<<"x-amz-bypass-governance-retention">>, <<"BypassGovernanceRetention">>},
                       {<<"x-amz-mfa">>, <<"MFA">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Removes the entire tag set from the specified object. For more
%% information about managing object tags, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html">
%% Object Tagging</a>.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:DeleteObjectTagging</code> action.
%%
%% To delete tags of a specific object version, add the
%% <code>versionId</code> query parameter in the request. You will need
%% permission for the <code>s3:DeleteObjectVersionTagging</code> action.
%%
%% The following operations are related to
%% <code>DeleteBucketMetricsConfiguration</code>:
%%
%% <ul> <li> <a>PutObjectTagging</a>
%%
%% </li> <li> <a>GetObjectTagging</a>
%%
%% </li> </ul>
delete_object_tagging(Client, Bucket, Key, Input) ->
    delete_object_tagging(Client, Bucket, Key, Input, []).
delete_object_tagging(Client, Bucket, Key, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?tagging"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc This operation enables you to delete multiple objects from a bucket
%% using a single HTTP request. If you know the object keys that you want to
%% delete, then this operation provides a suitable alternative to sending
%% individual delete requests, reducing per-request overhead.
%%
%% The request contains a list of up to 1000 keys that you want to delete. In
%% the XML, you provide the object key names, and optionally, version IDs if
%% you want to delete a specific version of the object from a
%% versioning-enabled bucket. For each key, Amazon S3 performs a delete
%% operation and returns the result of that delete, success, or failure, in
%% the response. Note that if the object specified in the request is not
%% found, Amazon S3 returns the result as deleted.
%%
%% The operation supports two modes for the response: verbose and quiet. By
%% default, the operation uses verbose mode in which the response includes
%% the result of deletion of each key in your request. In quiet mode the
%% response includes only keys where the delete operation encountered an
%% error. For a successful deletion, the operation does not return any
%% information about the delete in the response body.
%%
%% When performing this operation on an MFA Delete enabled bucket, that
%% attempts to delete any versioned objects, you must include an MFA token.
%% If you do not provide one, the entire request will fail, even if there are
%% non-versioned objects you are trying to delete. If you provide an invalid
%% token, whether there are versioned keys in the request or not, the entire
%% Multi-Object Delete request will fail. For information about MFA Delete,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete">
%% MFA Delete</a>.
%%
%% Finally, the Content-MD5 header is required for all Multi-Object Delete
%% requests. Amazon S3 uses the header value to ensure that your request body
%% has not been altered in transit.
%%
%% The following operations are related to <code>DeleteObjects</code>:
%%
%% <ul> <li> <a>CreateMultipartUpload</a>
%%
%% </li> <li> <a>UploadPart</a>
%%
%% </li> <li> <a>CompleteMultipartUpload</a>
%%
%% </li> <li> <a>ListParts</a>
%%
%% </li> <li> <a>AbortMultipartUpload</a>
%%
%% </li> </ul>
delete_objects(Client, Bucket, Input) ->
    delete_objects(Client, Bucket, Input, []).
delete_objects(Client, Bucket, Input0, Options) ->
    Method = post,
    Path = ["/", http_uri:encode(Bucket), "?delete"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-bypass-governance-retention">>, <<"BypassGovernanceRetention">>},
                       {<<"x-amz-mfa">>, <<"MFA">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Removes the <code>PublicAccessBlock</code> configuration for an
%% Amazon S3 bucket. To use this operation, you must have the
%% <code>s3:PutBucketPublicAccessBlock</code> permission. For more
%% information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% The following operations are related to
%% <code>DeletePublicAccessBlock</code>:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">Using
%% Amazon S3 Block Public Access</a>
%%
%% </li> <li> <a>GetPublicAccessBlock</a>
%%
%% </li> <li> <a>PutPublicAccessBlock</a>
%%
%% </li> <li> <a>GetBucketPolicyStatus</a>
%%
%% </li> </ul>
delete_public_access_block(Client, Bucket, Input) ->
    delete_public_access_block(Client, Bucket, Input, []).
delete_public_access_block(Client, Bucket, Input0, Options) ->
    Method = delete,
    Path = ["/", http_uri:encode(Bucket), "?publicAccessBlock"],
    SuccessStatusCode = 204,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc This implementation of the GET operation uses the
%% <code>accelerate</code> subresource to return the Transfer Acceleration
%% state of a bucket, which is either <code>Enabled</code> or
%% <code>Suspended</code>. Amazon S3 Transfer Acceleration is a bucket-level
%% feature that enables you to perform faster data transfers to and from
%% Amazon S3.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:GetAccelerateConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to your Amazon S3 Resources</a> in the <i>Amazon Simple
%% Storage Service Developer Guide</i>.
%%
%% You set the Transfer Acceleration state of an existing bucket to
%% <code>Enabled</code> or <code>Suspended</code> by using the
%% <a>PutBucketAccelerateConfiguration</a> operation.
%%
%% A GET <code>accelerate</code> request does not return a state value for a
%% bucket that has no transfer acceleration state. A bucket has no Transfer
%% Acceleration state if a state has never been set on the bucket.
%%
%% For more information about transfer acceleration, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Transfer
%% Acceleration</a> in the Amazon Simple Storage Service Developer Guide.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>PutBucketAccelerateConfiguration</a>
%%
%% </li> </ul>
get_bucket_accelerate_configuration(Client, Bucket)
  when is_map(Client) ->
    get_bucket_accelerate_configuration(Client, Bucket, []).
get_bucket_accelerate_configuration(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?accelerate"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc This implementation of the <code>GET</code> operation uses the
%% <code>acl</code> subresource to return the access control list (ACL) of a
%% bucket. To use <code>GET</code> to return the ACL of the bucket, you must
%% have <code>READ_ACP</code> access to the bucket. If <code>READ_ACP</code>
%% permission is granted to the anonymous user, you can return the ACL of the
%% bucket without using an authorization header.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li>
%%
%% </li> </ul>
get_bucket_acl(Client, Bucket)
  when is_map(Client) ->
    get_bucket_acl(Client, Bucket, []).
get_bucket_acl(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?acl"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc This implementation of the GET operation returns an analytics
%% configuration (identified by the analytics configuration ID) from the
%% bucket.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:GetAnalyticsConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">
%% Permissions Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a> in the <i>Amazon Simple
%% Storage Service Developer Guide</i>.
%%
%% For information about Amazon S3 analytics feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html">Amazon
%% S3 Analytics – Storage Class Analysis</a> in the <i>Amazon Simple Storage
%% Service Developer Guide</i>.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li>
%%
%% </li> <li>
%%
%% </li> <li>
%%
%% </li> </ul>
get_bucket_analytics_configuration(Client, Bucket)
  when is_map(Client) ->
    get_bucket_analytics_configuration(Client, Bucket, []).
get_bucket_analytics_configuration(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?analytics"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the cors configuration information set for the bucket.
%%
%% To use this operation, you must have permission to perform the
%% s3:GetBucketCORS action. By default, the bucket owner has this permission
%% and can grant it to others.
%%
%% For more information about cors, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html"> Enabling
%% Cross-Origin Resource Sharing</a>.
%%
%% The following operations are related to <code>GetBucketCors</code>:
%%
%% <ul> <li> <a>PutBucketCors</a>
%%
%% </li> <li> <a>DeleteBucketCors</a>
%%
%% </li> </ul>
get_bucket_cors(Client, Bucket)
  when is_map(Client) ->
    get_bucket_cors(Client, Bucket, []).
get_bucket_cors(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?cors"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the default encryption configuration for an Amazon S3 bucket.
%% For information about the Amazon S3 default encryption feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon
%% S3 Default Bucket Encryption</a>.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:GetEncryptionConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% The following operations are related to <code>GetBucketEncryption</code>:
%%
%% <ul> <li> <a>PutBucketEncryption</a>
%%
%% </li> <li> <a>DeleteBucketEncryption</a>
%%
%% </li> </ul>
get_bucket_encryption(Client, Bucket)
  when is_map(Client) ->
    get_bucket_encryption(Client, Bucket, []).
get_bucket_encryption(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?encryption"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an inventory configuration (identified by the inventory
%% configuration ID) from the bucket.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:GetInventoryConfiguration</code> action. The bucket owner has
%% this permission by default and can grant this permission to others. For
%% more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% For information about the Amazon S3 inventory feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html">Amazon
%% S3 Inventory</a>.
%%
%% The following operations are related to
%% <code>GetBucketInventoryConfiguration</code>:
%%
%% <ul> <li> <a>DeleteBucketInventoryConfiguration</a>
%%
%% </li> <li> <a>ListBucketInventoryConfigurations</a>
%%
%% </li> <li> <a>PutBucketInventoryConfiguration</a>
%%
%% </li> </ul>
get_bucket_inventory_configuration(Client, Bucket)
  when is_map(Client) ->
    get_bucket_inventory_configuration(Client, Bucket, []).
get_bucket_inventory_configuration(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?inventory"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc <important> For an updated version of this API, see
%% <a>GetBucketLifecycleConfiguration</a>. If you configured a bucket
%% lifecycle using the <code>filter</code> element, you should see the
%% updated version of this topic. This topic is provided for backward
%% compatibility.
%%
%% </important> Returns the lifecycle configuration information set on the
%% bucket. For information about lifecycle configuration, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object
%% Lifecycle Management</a>.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:GetLifecycleConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% <code>GetBucketLifecycle</code> has the following special error:
%%
%% <ul> <li> Error code: <code>NoSuchLifecycleConfiguration</code>
%%
%% <ul> <li> Description: The lifecycle configuration does not exist.
%%
%% </li> <li> HTTP Status Code: 404 Not Found
%%
%% </li> <li> SOAP Fault Code Prefix: Client
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% <code>GetBucketLifecycle</code>:
%%
%% <ul> <li> <a>GetBucketLifecycleConfiguration</a>
%%
%% </li> <li> <a>PutBucketLifecycle</a>
%%
%% </li> <li> <a>DeleteBucketLifecycle</a>
%%
%% </li> </ul>
get_bucket_lifecycle(Client, Bucket)
  when is_map(Client) ->
    get_bucket_lifecycle(Client, Bucket, []).
get_bucket_lifecycle(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?lifecycle"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc <note> Bucket lifecycle configuration now supports specifying a
%% lifecycle rule using an object key name prefix, one or more object tags,
%% or a combination of both. Accordingly, this section describes the latest
%% API. The response describes the new filter element that you can use to
%% specify a filter to select a subset of objects to which the rule applies.
%% If you are still using previous version of the lifecycle configuration, it
%% works. For the earlier API description, see <a>GetBucketLifecycle</a>.
%%
%% </note> Returns the lifecycle configuration information set on the bucket.
%% For information about lifecycle configuration, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object
%% Lifecycle Management</a>.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:GetLifecycleConfiguration</code> action. The bucket owner has
%% this permission, by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% <code>GetBucketLifecycleConfiguration</code> has the following special
%% error:
%%
%% <ul> <li> Error code: <code>NoSuchLifecycleConfiguration</code>
%%
%% <ul> <li> Description: The lifecycle configuration does not exist.
%%
%% </li> <li> HTTP Status Code: 404 Not Found
%%
%% </li> <li> SOAP Fault Code Prefix: Client
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% <code>GetBucketLifecycleConfiguration</code>:
%%
%% <ul> <li> <a>GetBucketLifecycle</a>
%%
%% </li> <li> <a>PutBucketLifecycle</a>
%%
%% </li> <li> <a>DeleteBucketLifecycle</a>
%%
%% </li> </ul>
get_bucket_lifecycle_configuration(Client, Bucket)
  when is_map(Client) ->
    get_bucket_lifecycle_configuration(Client, Bucket, []).
get_bucket_lifecycle_configuration(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?lifecycle"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the Region the bucket resides in. You set the bucket's Region
%% using the <code>LocationConstraint</code> request parameter in a
%% <code>CreateBucket</code> request. For more information, see
%% <a>CreateBucket</a>.
%%
%% To use this implementation of the operation, you must be the bucket owner.
%%
%% The following operations are related to <code>GetBucketLocation</code>:
%%
%% <ul> <li> <a>GetObject</a>
%%
%% </li> <li> <a>CreateBucket</a>
%%
%% </li> </ul>
get_bucket_location(Client, Bucket)
  when is_map(Client) ->
    get_bucket_location(Client, Bucket, []).
get_bucket_location(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?location"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the logging status of a bucket and the permissions users have
%% to view and modify that status. To use GET, you must be the bucket owner.
%%
%% The following operations are related to <code>GetBucketLogging</code>:
%%
%% <ul> <li> <a>CreateBucket</a>
%%
%% </li> <li> <a>PutBucketLogging</a>
%%
%% </li> </ul>
get_bucket_logging(Client, Bucket)
  when is_map(Client) ->
    get_bucket_logging(Client, Bucket, []).
get_bucket_logging(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?logging"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a metrics configuration (specified by the metrics configuration
%% ID) from the bucket. Note that this doesn't include the daily storage
%% metrics.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:GetMetricsConfiguration</code> action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% For information about CloudWatch request metrics for Amazon S3, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring
%% Metrics with Amazon CloudWatch</a>.
%%
%% The following operations are related to
%% <code>GetBucketMetricsConfiguration</code>:
%%
%% <ul> <li> <a>PutBucketMetricsConfiguration</a>
%%
%% </li> <li> <a>DeleteBucketMetricsConfiguration</a>
%%
%% </li> <li> <a>ListBucketMetricsConfigurations</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring
%% Metrics with Amazon CloudWatch</a>
%%
%% </li> </ul>
get_bucket_metrics_configuration(Client, Bucket)
  when is_map(Client) ->
    get_bucket_metrics_configuration(Client, Bucket, []).
get_bucket_metrics_configuration(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?metrics"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc No longer used, see <a>GetBucketNotificationConfiguration</a>.
get_bucket_notification(Client, Bucket)
  when is_map(Client) ->
    get_bucket_notification(Client, Bucket, []).
get_bucket_notification(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?notification"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the notification configuration of a bucket.
%%
%% If notifications are not enabled on the bucket, the operation returns an
%% empty <code>NotificationConfiguration</code> element.
%%
%% By default, you must be the bucket owner to read the notification
%% configuration of a bucket. However, the bucket owner can use a bucket
%% policy to grant permission to other users to read this configuration with
%% the <code>s3:GetBucketNotification</code> permission.
%%
%% For more information about setting and reading the notification
%% configuration on a bucket, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Setting
%% Up Notification of Bucket Events</a>. For more information about bucket
%% policies, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using
%% Bucket Policies</a>.
%%
%% The following operation is related to <code>GetBucketNotification</code>:
%%
%% <ul> <li> <a>PutBucketNotification</a>
%%
%% </li> </ul>
get_bucket_notification_configuration(Client, Bucket)
  when is_map(Client) ->
    get_bucket_notification_configuration(Client, Bucket, []).
get_bucket_notification_configuration(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?notification"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the policy of a specified bucket. If you are using an
%% identity other than the root user of the AWS account that owns the bucket,
%% the calling identity must have the <code>GetBucketPolicy</code>
%% permissions on the specified bucket and belong to the bucket owner's
%% account in order to use this operation.
%%
%% If you don't have <code>GetBucketPolicy</code> permissions, Amazon S3
%% returns a <code>403 Access Denied</code> error. If you have the correct
%% permissions, but you're not using an identity that belongs to the bucket
%% owner's account, Amazon S3 returns a <code>405 Method Not Allowed</code>
%% error.
%%
%% <important> As a security precaution, the root user of the AWS account
%% that owns a bucket can always use this operation, even if the policy
%% explicitly denies the root user the ability to perform this action.
%%
%% </important> For more information about bucket policies, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using
%% Bucket Policies and User Policies</a>.
%%
%% The following operation is related to <code>GetBucketPolicy</code>:
%%
%% <ul> <li> <a>GetObject</a>
%%
%% </li> </ul>
get_bucket_policy(Client, Bucket)
  when is_map(Client) ->
    get_bucket_policy(Client, Bucket, []).
get_bucket_policy(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?policy"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the policy status for an Amazon S3 bucket, indicating
%% whether the bucket is public. In order to use this operation, you must
%% have the <code>s3:GetBucketPolicyStatus</code> permission. For more
%% information about Amazon S3 permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying
%% Permissions in a Policy</a>.
%%
%% For more information about when Amazon S3 considers a bucket public, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The
%% Meaning of "Public"</a>.
%%
%% The following operations are related to
%% <code>GetBucketPolicyStatus</code>:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">Using
%% Amazon S3 Block Public Access</a>
%%
%% </li> <li> <a>GetPublicAccessBlock</a>
%%
%% </li> <li> <a>PutPublicAccessBlock</a>
%%
%% </li> <li> <a>DeletePublicAccessBlock</a>
%%
%% </li> </ul>
get_bucket_policy_status(Client, Bucket)
  when is_map(Client) ->
    get_bucket_policy_status(Client, Bucket, []).
get_bucket_policy_status(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?policyStatus"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the replication configuration of a bucket.
%%
%% <note> It can take a while to propagate the put or delete a replication
%% configuration to all Amazon S3 systems. Therefore, a get request soon
%% after put or delete can return a wrong result.
%%
%% </note> For information about replication configuration, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a>
%% in the <i>Amazon Simple Storage Service Developer Guide</i>.
%%
%% This operation requires permissions for the
%% <code>s3:GetReplicationConfiguration</code> action. For more information
%% about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using
%% Bucket Policies and User Policies</a>.
%%
%% If you include the <code>Filter</code> element in a replication
%% configuration, you must also include the
%% <code>DeleteMarkerReplication</code> and <code>Priority</code> elements.
%% The response also returns those elements.
%%
%% For information about <code>GetBucketReplication</code> errors, see
%% <a>ReplicationErrorCodeList</a>
%%
%% The following operations are related to <code>GetBucketReplication</code>:
%%
%% <ul> <li> <a>PutBucketReplication</a>
%%
%% </li> <li> <a>DeleteBucketReplication</a>
%%
%% </li> </ul>
get_bucket_replication(Client, Bucket)
  when is_map(Client) ->
    get_bucket_replication(Client, Bucket, []).
get_bucket_replication(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?replication"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the request payment configuration of a bucket. To use this
%% version of the operation, you must be the bucket owner. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html">Requester
%% Pays Buckets</a>.
%%
%% The following operations are related to
%% <code>GetBucketRequestPayment</code>:
%%
%% <ul> <li> <a>ListObjects</a>
%%
%% </li> </ul>
get_bucket_request_payment(Client, Bucket)
  when is_map(Client) ->
    get_bucket_request_payment(Client, Bucket, []).
get_bucket_request_payment(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?requestPayment"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the tag set associated with the bucket.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:GetBucketTagging</code> action. By default, the bucket owner has
%% this permission and can grant this permission to others.
%%
%% <code>GetBucketTagging</code> has the following special error:
%%
%% <ul> <li> Error code: <code>NoSuchTagSetError</code>
%%
%% <ul> <li> Description: There is no tag set associated with the bucket.
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% <code>GetBucketTagging</code>:
%%
%% <ul> <li> <a>PutBucketTagging</a>
%%
%% </li> <li> <a>DeleteBucketTagging</a>
%%
%% </li> </ul>
get_bucket_tagging(Client, Bucket)
  when is_map(Client) ->
    get_bucket_tagging(Client, Bucket, []).
get_bucket_tagging(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?tagging"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the versioning state of a bucket.
%%
%% To retrieve the versioning state of a bucket, you must be the bucket
%% owner.
%%
%% This implementation also returns the MFA Delete status of the versioning
%% state. If the MFA Delete status is <code>enabled</code>, the bucket owner
%% must use an authentication device to change the versioning state of the
%% bucket.
%%
%% The following operations are related to <code>GetBucketVersioning</code>:
%%
%% <ul> <li> <a>GetObject</a>
%%
%% </li> <li> <a>PutObject</a>
%%
%% </li> <li> <a>DeleteObject</a>
%%
%% </li> </ul>
get_bucket_versioning(Client, Bucket)
  when is_map(Client) ->
    get_bucket_versioning(Client, Bucket, []).
get_bucket_versioning(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?versioning"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the website configuration for a bucket. To host website on
%% Amazon S3, you can configure a bucket as website by adding a website
%% configuration. For more information about hosting websites, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting
%% Websites on Amazon S3</a>.
%%
%% This GET operation requires the <code>S3:GetBucketWebsite</code>
%% permission. By default, only the bucket owner can read the bucket website
%% configuration. However, bucket owners can allow other users to read the
%% website configuration by writing a bucket policy granting them the
%% <code>S3:GetBucketWebsite</code> permission.
%%
%% The following operations are related to <code>DeleteBucketWebsite</code>:
%%
%% <ul> <li> <a>DeleteBucketWebsite</a>
%%
%% </li> <li> <a>PutBucketWebsite</a>
%%
%% </li> </ul>
get_bucket_website(Client, Bucket)
  when is_map(Client) ->
    get_bucket_website(Client, Bucket, []).
get_bucket_website(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?website"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves objects from Amazon S3. To use <code>GET</code>, you must
%% have <code>READ</code> access to the object. If you grant
%% <code>READ</code> access to the anonymous user, you can return the object
%% without using an authorization header.
%%
%% An Amazon S3 bucket has no directory hierarchy such as you would find in a
%% typical computer file system. You can, however, create a logical hierarchy
%% by using object key names that imply a folder structure. For example,
%% instead of naming an object <code>sample.jpg</code>, you can name it
%% <code>photos/2006/February/sample.jpg</code>.
%%
%% To get an object from such a logical hierarchy, specify the full key name
%% for the object in the <code>GET</code> operation. For a virtual
%% hosted-style request example, if you have the object
%% <code>photos/2006/February/sample.jpg</code>, specify the resource as
%% <code>/photos/2006/February/sample.jpg</code>. For a path-style request
%% example, if you have the object
%% <code>photos/2006/February/sample.jpg</code> in the bucket named
%% <code>examplebucket</code>, specify the resource as
%% <code>/examplebucket/photos/2006/February/sample.jpg</code>. For more
%% information about request types, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket">HTTP
%% Host Header Bucket Specification</a>.
%%
%% To distribute large files to many people, you can save bandwidth costs by
%% using BitTorrent. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3Torrent.html">Amazon
%% S3 Torrent</a>. For more information about returning the ACL of an object,
%% see <a>GetObjectAcl</a>.
%%
%% If the object you are retrieving is stored in the GLACIER or DEEP_ARCHIVE
%% storage classes, before you can retrieve the object you must first restore
%% a copy using . Otherwise, this operation returns an
%% <code>InvalidObjectStateError</code> error. For information about
%% restoring archived objects, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html">Restoring
%% Archived Objects</a>.
%%
%% Encryption request headers, like
%% <code>x-amz-server-side-encryption</code>, should not be sent for GET
%% requests if your object uses server-side encryption with CMKs stored in
%% AWS KMS (SSE-KMS) or server-side encryption with Amazon S3–managed
%% encryption keys (SSE-S3). If your object does use these types of keys,
%% you’ll get an HTTP 400 BadRequest error.
%%
%% If you encrypt an object by using server-side encryption with
%% customer-provided encryption keys (SSE-C) when you store the object in
%% Amazon S3, then when you GET the object, you must use the following
%% headers:
%%
%% <ul> <li> x-amz-server-side​-encryption​-customer-algorithm
%%
%% </li> <li> x-amz-server-side​-encryption​-customer-key
%%
%% </li> <li> x-amz-server-side​-encryption​-customer-key-MD5
%%
%% </li> </ul> For more information about SSE-C, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side
%% Encryption (Using Customer-Provided Encryption Keys)</a>.
%%
%% Assuming you have permission to read object tags (permission for the
%% <code>s3:GetObjectVersionTagging</code> action), the response also returns
%% the <code>x-amz-tagging-count</code> header that provides the count of
%% number of tags associated with the object. You can use
%% <a>GetObjectTagging</a> to retrieve the tag set associated with an object.
%%
%% <b>Permissions</b>
%%
%% You need the <code>s3:GetObject</code> permission for this operation. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying
%% Permissions in a Policy</a>. If the object you request does not exist, the
%% error Amazon S3 returns depends on whether you also have the
%% <code>s3:ListBucket</code> permission.
%%
%% <ul> <li> If you have the <code>s3:ListBucket</code> permission on the
%% bucket, Amazon S3 will return an HTTP status code 404 ("no such key")
%% error.
%%
%% </li> <li> If you don’t have the <code>s3:ListBucket</code> permission,
%% Amazon S3 will return an HTTP status code 403 ("access denied") error.
%%
%% </li> </ul> <b>Versioning</b>
%%
%% By default, the GET operation returns the current version of an object. To
%% return a different version, use the <code>versionId</code> subresource.
%%
%% <note> If the current version of the object is a delete marker, Amazon S3
%% behaves as if the object was deleted and includes
%% <code>x-amz-delete-marker: true</code> in the response.
%%
%% </note> For more information about versioning, see
%% <a>PutBucketVersioning</a>.
%%
%% <b>Overriding Response Header Values</b>
%%
%% There are times when you want to override certain response header values
%% in a GET response. For example, you might override the Content-Disposition
%% response header value in your GET request.
%%
%% You can override values for a set of response headers using the following
%% query parameters. These response header values are sent only on a
%% successful request, that is, when status code 200 OK is returned. The set
%% of headers you can override using these parameters is a subset of the
%% headers that Amazon S3 accepts when you create an object. The response
%% headers that you can override for the GET response are
%% <code>Content-Type</code>, <code>Content-Language</code>,
%% <code>Expires</code>, <code>Cache-Control</code>,
%% <code>Content-Disposition</code>, and <code>Content-Encoding</code>. To
%% override these header values in the GET response, you use the following
%% request parameters.
%%
%% <note> You must sign the request, either using an Authorization header or
%% a presigned URL, when using these parameters. They cannot be used with an
%% unsigned (anonymous) request.
%%
%% </note> <ul> <li> <code>response-content-type</code>
%%
%% </li> <li> <code>response-content-language</code>
%%
%% </li> <li> <code>response-expires</code>
%%
%% </li> <li> <code>response-cache-control</code>
%%
%% </li> <li> <code>response-content-disposition</code>
%%
%% </li> <li> <code>response-content-encoding</code>
%%
%% </li> </ul> <b>Additional Considerations about Request Headers</b>
%%
%% If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code>
%% headers are present in the request as follows: <code>If-Match</code>
%% condition evaluates to <code>true</code>, and;
%% <code>If-Unmodified-Since</code> condition evaluates to
%% <code>false</code>; then, S3 returns 200 OK and the data requested.
%%
%% If both of the <code>If-None-Match</code> and
%% <code>If-Modified-Since</code> headers are present in the request as
%% follows:<code> If-None-Match</code> condition evaluates to
%% <code>false</code>, and; <code>If-Modified-Since</code> condition
%% evaluates to <code>true</code>; then, S3 returns 304 Not Modified response
%% code.
%%
%% For more information about conditional requests, see <a
%% href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.
%%
%% The following operations are related to <code>GetObject</code>:
%%
%% <ul> <li> <a>ListBuckets</a>
%%
%% </li> <li> <a>GetObjectAcl</a>
%%
%% </li> </ul>
get_object(Client, Bucket, Key, IfMatch, IfModifiedSince, IfNoneMatch, IfUnmodifiedSince, Range, RequestPayer, SSECustomerAlgorithm, SSECustomerKey, SSECustomerKeyMD5)
  when is_map(Client) ->
    get_object(Client, Bucket, Key, IfMatch, IfModifiedSince, IfNoneMatch, IfUnmodifiedSince, Range, RequestPayer, SSECustomerAlgorithm, SSECustomerKey, SSECustomerKeyMD5, []).
get_object(Client, Bucket, Key, IfMatch, IfModifiedSince, IfNoneMatch, IfUnmodifiedSince, Range, RequestPayer, SSECustomerAlgorithm, SSECustomerKey, SSECustomerKeyMD5, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = undefined,
     Headers0 =
      [
        {<<"If-Match">>, IfMatch},
        {<<"If-Modified-Since">>, IfModifiedSince},
        {<<"If-None-Match">>, IfNoneMatch},
        {<<"If-Unmodified-Since">>, IfUnmodifiedSince},
        {<<"Range">>, Range},
        {<<"x-amz-request-payer">>, RequestPayer},
        {<<"x-amz-server-side-encryption-customer-algorithm">>, SSECustomerAlgorithm},
        {<<"x-amz-server-side-encryption-customer-key">>, SSECustomerKey},
        {<<"x-amz-server-side-encryption-customer-key-MD5">>, SSECustomerKeyMD5}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],
    
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"accept-ranges">>, <<"AcceptRanges">>},
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Disposition">>, <<"ContentDisposition">>},
            {<<"Content-Encoding">>, <<"ContentEncoding">>},
            {<<"Content-Language">>, <<"ContentLanguage">>},
            {<<"Content-Length">>, <<"ContentLength">>},
            {<<"Content-Range">>, <<"ContentRange">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"x-amz-delete-marker">>, <<"DeleteMarker">>},
            {<<"ETag">>, <<"ETag">>},
            {<<"x-amz-expiration">>, <<"Expiration">>},
            {<<"Expires">>, <<"Expires">>},
            {<<"Last-Modified">>, <<"LastModified">>},
            {<<"x-amz-missing-meta">>, <<"MissingMeta">>},
            {<<"x-amz-object-lock-legal-hold">>, <<"ObjectLockLegalHoldStatus">>},
            {<<"x-amz-object-lock-mode">>, <<"ObjectLockMode">>},
            {<<"x-amz-object-lock-retain-until-date">>, <<"ObjectLockRetainUntilDate">>},
            {<<"x-amz-mp-parts-count">>, <<"PartsCount">>},
            {<<"x-amz-replication-status">>, <<"ReplicationStatus">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-restore">>, <<"Restore">>},
            {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
            {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
            {<<"x-amz-storage-class">>, <<"StorageClass">>},
            {<<"x-amz-tagging-count">>, <<"TagCount">>},
            {<<"x-amz-version-id">>, <<"VersionId">>},
            {<<"x-amz-website-redirect-location">>, <<"WebsiteRedirectLocation">>}
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

%% @doc Returns the access control list (ACL) of an object. To use this
%% operation, you must have READ_ACP access to the object.
%%
%% <b>Versioning</b>
%%
%% By default, GET returns ACL information about the current version of an
%% object. To return ACL information about a different version, use the
%% versionId subresource.
%%
%% The following operations are related to <code>GetObjectAcl</code>:
%%
%% <ul> <li> <a>GetObject</a>
%%
%% </li> <li> <a>DeleteObject</a>
%%
%% </li> <li> <a>PutObject</a>
%%
%% </li> </ul>
get_object_acl(Client, Bucket, Key, RequestPayer)
  when is_map(Client) ->
    get_object_acl(Client, Bucket, Key, RequestPayer, []).
get_object_acl(Client, Bucket, Key, RequestPayer, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?acl"],
    SuccessStatusCode = undefined,
     Headers0 =
      [
        {<<"x-amz-request-payer">>, RequestPayer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],
    
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Gets an object's current Legal Hold status. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
%% Objects</a>.
get_object_legal_hold(Client, Bucket, Key, RequestPayer)
  when is_map(Client) ->
    get_object_legal_hold(Client, Bucket, Key, RequestPayer, []).
get_object_legal_hold(Client, Bucket, Key, RequestPayer, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?legal-hold"],
    SuccessStatusCode = undefined,
     Headers0 =
      [
        {<<"x-amz-request-payer">>, RequestPayer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],
    
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Object Lock configuration for a bucket. The rule specified
%% in the Object Lock configuration will be applied by default to every new
%% object placed in the specified bucket. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
%% Objects</a>.
get_object_lock_configuration(Client, Bucket)
  when is_map(Client) ->
    get_object_lock_configuration(Client, Bucket, []).
get_object_lock_configuration(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?object-lock"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves an object's retention settings. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
%% Objects</a>.
get_object_retention(Client, Bucket, Key, RequestPayer)
  when is_map(Client) ->
    get_object_retention(Client, Bucket, Key, RequestPayer, []).
get_object_retention(Client, Bucket, Key, RequestPayer, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?retention"],
    SuccessStatusCode = undefined,
     Headers0 =
      [
        {<<"x-amz-request-payer">>, RequestPayer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],
    
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the tag-set of an object. You send the GET request against
%% the tagging subresource associated with the object.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:GetObjectTagging</code> action. By default, the GET operation
%% returns information about current version of an object. For a versioned
%% bucket, you can have multiple versions of an object in your bucket. To
%% retrieve tags of any other version, use the versionId query parameter. You
%% also need permission for the <code>s3:GetObjectVersionTagging</code>
%% action.
%%
%% By default, the bucket owner has this permission and can grant this
%% permission to others.
%%
%% For information about the Amazon S3 object tagging feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html">Object
%% Tagging</a>.
%%
%% The following operation is related to <code>GetObjectTagging</code>:
%%
%% <ul> <li> <a>PutObjectTagging</a>
%%
%% </li> </ul>
get_object_tagging(Client, Bucket, Key)
  when is_map(Client) ->
    get_object_tagging(Client, Bucket, Key, []).
get_object_tagging(Client, Bucket, Key, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?tagging"],
    SuccessStatusCode = undefined,
    Headers = [],
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Return torrent files from a bucket. BitTorrent can save you bandwidth
%% when you're distributing large files. For more information about
%% BitTorrent, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3Torrent.html">Amazon
%% S3 Torrent</a>.
%%
%% <note> You can get torrent only for objects that are less than 5 GB in
%% size and that are not encrypted using server-side encryption with
%% customer-provided encryption key.
%%
%% </note> To use GET, you must have READ access to the object.
%%
%% The following operation is related to <code>GetObjectTorrent</code>:
%%
%% <ul> <li> <a>GetObject</a>
%%
%% </li> </ul>
get_object_torrent(Client, Bucket, Key, RequestPayer)
  when is_map(Client) ->
    get_object_torrent(Client, Bucket, Key, RequestPayer, []).
get_object_torrent(Client, Bucket, Key, RequestPayer, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?torrent"],
    SuccessStatusCode = undefined,
     Headers0 =
      [
        {<<"x-amz-request-payer">>, RequestPayer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],
    
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Retrieves the <code>PublicAccessBlock</code> configuration for an
%% Amazon S3 bucket. To use this operation, you must have the
%% <code>s3:GetBucketPublicAccessBlock</code> permission. For more
%% information about Amazon S3 permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying
%% Permissions in a Policy</a>.
%%
%% <important> When Amazon S3 evaluates the <code>PublicAccessBlock</code>
%% configuration for a bucket or an object, it checks the
%% <code>PublicAccessBlock</code> configuration for both the bucket (or the
%% bucket that contains the object) and the bucket owner's account. If the
%% <code>PublicAccessBlock</code> settings are different between the bucket
%% and the account, Amazon S3 uses the most restrictive combination of the
%% bucket-level and account-level settings.
%%
%% </important> For more information about when Amazon S3 considers a bucket
%% or an object public, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The
%% Meaning of "Public"</a>.
%%
%% The following operations are related to <code>GetPublicAccessBlock</code>:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">Using
%% Amazon S3 Block Public Access</a>
%%
%% </li> <li> <a>PutPublicAccessBlock</a>
%%
%% </li> <li> <a>GetPublicAccessBlock</a>
%%
%% </li> <li> <a>DeletePublicAccessBlock</a>
%%
%% </li> </ul>
get_public_access_block(Client, Bucket)
  when is_map(Client) ->
    get_public_access_block(Client, Bucket, []).
get_public_access_block(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?publicAccessBlock"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation is useful to determine if a bucket exists and you have
%% permission to access it. The operation returns a <code>200 OK</code> if
%% the bucket exists and you have permission to access it. Otherwise, the
%% operation might return responses such as <code>404 Not Found</code> and
%% <code>403 Forbidden</code>.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:ListBucket</code> action. The bucket owner has this permission by
%% default and can grant this permission to others. For more information
%% about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
head_bucket(Client, Bucket, Input) ->
    head_bucket(Client, Bucket, Input, []).
head_bucket(Client, Bucket, Input0, Options) ->
    Method = head,
    Path = ["/", http_uri:encode(Bucket), ""],
    SuccessStatusCode = undefined,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc The HEAD operation retrieves metadata from an object without
%% returning the object itself. This operation is useful if you're only
%% interested in an object's metadata. To use HEAD, you must have READ access
%% to the object.
%%
%% A <code>HEAD</code> request has the same options as a <code>GET</code>
%% operation on an object. The response is identical to the <code>GET</code>
%% response except that there is no response body.
%%
%% If you encrypt an object by using server-side encryption with
%% customer-provided encryption keys (SSE-C) when you store the object in
%% Amazon S3, then when you retrieve the metadata from the object, you must
%% use the following headers:
%%
%% <ul> <li> x-amz-server-side​-encryption​-customer-algorithm
%%
%% </li> <li> x-amz-server-side​-encryption​-customer-key
%%
%% </li> <li> x-amz-server-side​-encryption​-customer-key-MD5
%%
%% </li> </ul> For more information about SSE-C, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side
%% Encryption (Using Customer-Provided Encryption Keys)</a>.
%%
%% <note> Encryption request headers, like
%% <code>x-amz-server-side-encryption</code>, should not be sent for GET
%% requests if your object uses server-side encryption with CMKs stored in
%% AWS KMS (SSE-KMS) or server-side encryption with Amazon S3–managed
%% encryption keys (SSE-S3). If your object does use these types of keys,
%% you’ll get an HTTP 400 BadRequest error.
%%
%% </note> Request headers are limited to 8 KB in size. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html">Common
%% Request Headers</a>.
%%
%% Consider the following when using request headers:
%%
%% <ul> <li> Consideration 1 – If both of the <code>If-Match</code> and
%% <code>If-Unmodified-Since</code> headers are present in the request as
%% follows:
%%
%% <ul> <li> <code>If-Match</code> condition evaluates to <code>true</code>,
%% and;
%%
%% </li> <li> <code>If-Unmodified-Since</code> condition evaluates to
%% <code>false</code>;
%%
%% </li> </ul> Then Amazon S3 returns <code>200 OK</code> and the data
%% requested.
%%
%% </li> <li> Consideration 2 – If both of the <code>If-None-Match</code> and
%% <code>If-Modified-Since</code> headers are present in the request as
%% follows:
%%
%% <ul> <li> <code>If-None-Match</code> condition evaluates to
%% <code>false</code>, and;
%%
%% </li> <li> <code>If-Modified-Since</code> condition evaluates to
%% <code>true</code>;
%%
%% </li> </ul> Then Amazon S3 returns the <code>304 Not Modified</code>
%% response code.
%%
%% </li> </ul> For more information about conditional requests, see <a
%% href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.
%%
%% <b>Permissions</b>
%%
%% You need the <code>s3:GetObject</code> permission for this operation. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying
%% Permissions in a Policy</a>. If the object you request does not exist, the
%% error Amazon S3 returns depends on whether you also have the s3:ListBucket
%% permission.
%%
%% <ul> <li> If you have the <code>s3:ListBucket</code> permission on the
%% bucket, Amazon S3 returns an HTTP status code 404 ("no such key") error.
%%
%% </li> <li> If you don’t have the <code>s3:ListBucket</code> permission,
%% Amazon S3 returns an HTTP status code 403 ("access denied") error.
%%
%% </li> </ul> The following operation is related to <code>HeadObject</code>:
%%
%% <ul> <li> <a>GetObject</a>
%%
%% </li> </ul>
head_object(Client, Bucket, Key, Input) ->
    head_object(Client, Bucket, Key, Input, []).
head_object(Client, Bucket, Key, Input0, Options) ->
    Method = head,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
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
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"accept-ranges">>, <<"AcceptRanges">>},
            {<<"Cache-Control">>, <<"CacheControl">>},
            {<<"Content-Disposition">>, <<"ContentDisposition">>},
            {<<"Content-Encoding">>, <<"ContentEncoding">>},
            {<<"Content-Language">>, <<"ContentLanguage">>},
            {<<"Content-Length">>, <<"ContentLength">>},
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"x-amz-delete-marker">>, <<"DeleteMarker">>},
            {<<"ETag">>, <<"ETag">>},
            {<<"x-amz-expiration">>, <<"Expiration">>},
            {<<"Expires">>, <<"Expires">>},
            {<<"Last-Modified">>, <<"LastModified">>},
            {<<"x-amz-missing-meta">>, <<"MissingMeta">>},
            {<<"x-amz-object-lock-legal-hold">>, <<"ObjectLockLegalHoldStatus">>},
            {<<"x-amz-object-lock-mode">>, <<"ObjectLockMode">>},
            {<<"x-amz-object-lock-retain-until-date">>, <<"ObjectLockRetainUntilDate">>},
            {<<"x-amz-mp-parts-count">>, <<"PartsCount">>},
            {<<"x-amz-replication-status">>, <<"ReplicationStatus">>},
            {<<"x-amz-request-charged">>, <<"RequestCharged">>},
            {<<"x-amz-restore">>, <<"Restore">>},
            {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
            {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>},
            {<<"x-amz-server-side-encryption-aws-kms-key-id">>, <<"SSEKMSKeyId">>},
            {<<"x-amz-server-side-encryption">>, <<"ServerSideEncryption">>},
            {<<"x-amz-storage-class">>, <<"StorageClass">>},
            {<<"x-amz-version-id">>, <<"VersionId">>},
            {<<"x-amz-website-redirect-location">>, <<"WebsiteRedirectLocation">>}
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

%% @doc Lists the analytics configurations for the bucket. You can have up to
%% 1,000 analytics configurations per bucket.
%%
%% This operation supports list pagination and does not return more than 100
%% configurations at a time. You should always check the
%% <code>IsTruncated</code> element in the response. If there are no more
%% configurations to list, <code>IsTruncated</code> is set to false. If there
%% are more configurations to list, <code>IsTruncated</code> is set to true,
%% and there will be a value in <code>NextContinuationToken</code>. You use
%% the <code>NextContinuationToken</code> value to continue the pagination of
%% the list by passing the value in continuation-token in the request to
%% <code>GET</code> the next page.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:GetAnalyticsConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% For information about Amazon S3 analytics feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html">Amazon
%% S3 Analytics – Storage Class Analysis</a>.
%%
%% The following operations are related to
%% <code>ListBucketAnalyticsConfigurations</code>:
%%
%% <ul> <li> <a>GetBucketAnalyticsConfiguration</a>
%%
%% </li> <li> <a>DeleteBucketAnalyticsConfiguration</a>
%%
%% </li> <li> <a>PutBucketAnalyticsConfiguration</a>
%%
%% </li> </ul>
list_bucket_analytics_configurations(Client, Bucket)
  when is_map(Client) ->
    list_bucket_analytics_configurations(Client, Bucket, []).
list_bucket_analytics_configurations(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?analytics"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of inventory configurations for the bucket. You can
%% have up to 1,000 analytics configurations per bucket.
%%
%% This operation supports list pagination and does not return more than 100
%% configurations at a time. Always check the <code>IsTruncated</code>
%% element in the response. If there are no more configurations to list,
%% <code>IsTruncated</code> is set to false. If there are more configurations
%% to list, <code>IsTruncated</code> is set to true, and there is a value in
%% <code>NextContinuationToken</code>. You use the
%% <code>NextContinuationToken</code> value to continue the pagination of the
%% list by passing the value in continuation-token in the request to
%% <code>GET</code> the next page.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:GetInventoryConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% For information about the Amazon S3 inventory feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html">Amazon
%% S3 Inventory</a>
%%
%% The following operations are related to
%% <code>ListBucketInventoryConfigurations</code>:
%%
%% <ul> <li> <a>GetBucketInventoryConfiguration</a>
%%
%% </li> <li> <a>DeleteBucketInventoryConfiguration</a>
%%
%% </li> <li> <a>PutBucketInventoryConfiguration</a>
%%
%% </li> </ul>
list_bucket_inventory_configurations(Client, Bucket)
  when is_map(Client) ->
    list_bucket_inventory_configurations(Client, Bucket, []).
list_bucket_inventory_configurations(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?inventory"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the metrics configurations for the bucket. The metrics
%% configurations are only for the request metrics of the bucket and do not
%% provide information on daily storage metrics. You can have up to 1,000
%% configurations per bucket.
%%
%% This operation supports list pagination and does not return more than 100
%% configurations at a time. Always check the <code>IsTruncated</code>
%% element in the response. If there are no more configurations to list,
%% <code>IsTruncated</code> is set to false. If there are more configurations
%% to list, <code>IsTruncated</code> is set to true, and there is a value in
%% <code>NextContinuationToken</code>. You use the
%% <code>NextContinuationToken</code> value to continue the pagination of the
%% list by passing the value in <code>continuation-token</code> in the
%% request to <code>GET</code> the next page.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:GetMetricsConfiguration</code> action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% For more information about metrics configurations and CloudWatch request
%% metrics, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring
%% Metrics with Amazon CloudWatch</a>.
%%
%% The following operations are related to
%% <code>ListBucketMetricsConfigurations</code>:
%%
%% <ul> <li> <a>PutBucketMetricsConfiguration</a>
%%
%% </li> <li> <a>GetBucketMetricsConfiguration</a>
%%
%% </li> <li> <a>DeleteBucketMetricsConfiguration</a>
%%
%% </li> </ul>
list_bucket_metrics_configurations(Client, Bucket)
  when is_map(Client) ->
    list_bucket_metrics_configurations(Client, Bucket, []).
list_bucket_metrics_configurations(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?metrics"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all buckets owned by the authenticated sender of
%% the request.
list_buckets(Client)
  when is_map(Client) ->
    list_buckets(Client, []).
list_buckets(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists in-progress multipart uploads. An in-progress
%% multipart upload is a multipart upload that has been initiated using the
%% Initiate Multipart Upload request, but has not yet been completed or
%% aborted.
%%
%% This operation returns at most 1,000 multipart uploads in the response.
%% 1,000 multipart uploads is the maximum number of uploads a response can
%% include, which is also the default value. You can further limit the number
%% of uploads in a response by specifying the <code>max-uploads</code>
%% parameter in the response. If additional multipart uploads satisfy the
%% list criteria, the response will contain an <code>IsTruncated</code>
%% element with the value true. To list the additional multipart uploads, use
%% the <code>key-marker</code> and <code>upload-id-marker</code> request
%% parameters.
%%
%% In the response, the uploads are sorted by key. If your application has
%% initiated more than one multipart upload using the same object key, then
%% uploads in the response are first sorted by key. Additionally, uploads are
%% sorted in ascending order within each key by the upload initiation time.
%%
%% For more information on multipart uploads, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading
%% Objects Using Multipart Upload</a>.
%%
%% For information on permissions required to use the multipart upload API,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
%% Upload API and Permissions</a>.
%%
%% The following operations are related to <code>ListMultipartUploads</code>:
%%
%% <ul> <li> <a>CreateMultipartUpload</a>
%%
%% </li> <li> <a>UploadPart</a>
%%
%% </li> <li> <a>CompleteMultipartUpload</a>
%%
%% </li> <li> <a>ListParts</a>
%%
%% </li> <li> <a>AbortMultipartUpload</a>
%%
%% </li> </ul>
list_multipart_uploads(Client, Bucket)
  when is_map(Client) ->
    list_multipart_uploads(Client, Bucket, []).
list_multipart_uploads(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?uploads"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata about all of the versions of objects in a bucket.
%% You can also use request parameters as selection criteria to return
%% metadata about a subset of all the object versions.
%%
%% <note> A 200 OK response can contain valid or invalid XML. Make sure to
%% design your application to parse the contents of the response and handle
%% it appropriately.
%%
%% </note> To use this operation, you must have READ access to the bucket.
%%
%% The following operations are related to <code>ListObjectVersions</code>:
%%
%% <ul> <li> <a>ListObjectsV2</a>
%%
%% </li> <li> <a>GetObject</a>
%%
%% </li> <li> <a>PutObject</a>
%%
%% </li> <li> <a>DeleteObject</a>
%%
%% </li> </ul>
list_object_versions(Client, Bucket)
  when is_map(Client) ->
    list_object_versions(Client, Bucket, []).
list_object_versions(Client, Bucket, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?versions"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns some or all (up to 1,000) of the objects in a bucket. You can
%% use the request parameters as selection criteria to return a subset of the
%% objects in a bucket. A 200 OK response can contain valid or invalid XML.
%% Be sure to design your application to parse the contents of the response
%% and handle it appropriately.
%%
%% <important> This API has been revised. We recommend that you use the newer
%% version, <a>ListObjectsV2</a>, when developing applications. For backward
%% compatibility, Amazon S3 continues to support <code>ListObjects</code>.
%%
%% </important> The following operations are related to
%% <code>ListObjects</code>:
%%
%% <ul> <li> <a>ListObjectsV2</a>
%%
%% </li> <li> <a>GetObject</a>
%%
%% </li> <li> <a>PutObject</a>
%%
%% </li> <li> <a>CreateBucket</a>
%%
%% </li> <li> <a>ListBuckets</a>
%%
%% </li> </ul>
list_objects(Client, Bucket, RequestPayer)
  when is_map(Client) ->
    list_objects(Client, Bucket, RequestPayer, []).
list_objects(Client, Bucket, RequestPayer, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), ""],
    SuccessStatusCode = undefined,
     Headers0 =
      [
        {<<"x-amz-request-payer">>, RequestPayer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],
    
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns some or all (up to 1,000) of the objects in a bucket. You can
%% use the request parameters as selection criteria to return a subset of the
%% objects in a bucket. A <code>200 OK</code> response can contain valid or
%% invalid XML. Make sure to design your application to parse the contents of
%% the response and handle it appropriately.
%%
%% To use this operation, you must have READ access to the bucket.
%%
%% To use this operation in an AWS Identity and Access Management (IAM)
%% policy, you must have permissions to perform the
%% <code>s3:ListBucket</code> action. The bucket owner has this permission by
%% default and can grant this permission to others. For more information
%% about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% <important> This section describes the latest revision of the API. We
%% recommend that you use this revised API for application development. For
%% backward compatibility, Amazon S3 continues to support the prior version
%% of this API, <a>ListObjects</a>.
%%
%% </important> To get a list of your buckets, see <a>ListBuckets</a>.
%%
%% The following operations are related to <code>ListObjectsV2</code>:
%%
%% <ul> <li> <a>GetObject</a>
%%
%% </li> <li> <a>PutObject</a>
%%
%% </li> <li> <a>CreateBucket</a>
%%
%% </li> </ul>
list_objects_v2(Client, Bucket, RequestPayer)
  when is_map(Client) ->
    list_objects_v2(Client, Bucket, RequestPayer, []).
list_objects_v2(Client, Bucket, RequestPayer, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "?list-type=2"],
    SuccessStatusCode = undefined,
     Headers0 =
      [
        {<<"x-amz-request-payer">>, RequestPayer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],
    
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the parts that have been uploaded for a specific multipart
%% upload. This operation must include the upload ID, which you obtain by
%% sending the initiate multipart upload request (see
%% <a>CreateMultipartUpload</a>). This request returns a maximum of 1,000
%% uploaded parts. The default number of parts returned is 1,000 parts. You
%% can restrict the number of parts returned by specifying the
%% <code>max-parts</code> request parameter. If your multipart upload
%% consists of more than 1,000 parts, the response returns an
%% <code>IsTruncated</code> field with the value of true, and a
%% <code>NextPartNumberMarker</code> element. In subsequent
%% <code>ListParts</code> requests you can include the part-number-marker
%% query string parameter and set its value to the
%% <code>NextPartNumberMarker</code> field value from the previous response.
%%
%% For more information on multipart uploads, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading
%% Objects Using Multipart Upload</a>.
%%
%% For information on permissions required to use the multipart upload API,
%% see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
%% Upload API and Permissions</a>.
%%
%% The following operations are related to <code>ListParts</code>:
%%
%% <ul> <li> <a>CreateMultipartUpload</a>
%%
%% </li> <li> <a>UploadPart</a>
%%
%% </li> <li> <a>CompleteMultipartUpload</a>
%%
%% </li> <li> <a>AbortMultipartUpload</a>
%%
%% </li> <li> <a>ListMultipartUploads</a>
%%
%% </li> </ul>
list_parts(Client, Bucket, Key, RequestPayer)
  when is_map(Client) ->
    list_parts(Client, Bucket, Key, RequestPayer, []).
list_parts(Client, Bucket, Key, RequestPayer, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = undefined,
     Headers0 =
      [
        {<<"x-amz-request-payer">>, RequestPayer}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],
    
    case request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode) of
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

%% @doc Sets the accelerate configuration of an existing bucket. Amazon S3
%% Transfer Acceleration is a bucket-level feature that enables you to
%% perform faster data transfers to Amazon S3.
%%
%% To use this operation, you must have permission to perform the
%% s3:PutAccelerateConfiguration action. The bucket owner has this permission
%% by default. The bucket owner can grant this permission to others. For more
%% information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% The Transfer Acceleration state of a bucket can be set to one of the
%% following two values:
%%
%% <ul> <li> Enabled – Enables accelerated data transfers to the bucket.
%%
%% </li> <li> Suspended – Disables accelerated data transfers to the bucket.
%%
%% </li> </ul> The <a>GetBucketAccelerateConfiguration</a> operation returns
%% the transfer acceleration state of a bucket.
%%
%% After setting the Transfer Acceleration state of a bucket to Enabled, it
%% might take up to thirty minutes before the data transfer rates to the
%% bucket increase.
%%
%% The name of the bucket used for Transfer Acceleration must be
%% DNS-compliant and must not contain periods (".").
%%
%% For more information about transfer acceleration, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Transfer
%% Acceleration</a>.
%%
%% The following operations are related to
%% <code>PutBucketAccelerateConfiguration</code>:
%%
%% <ul> <li> <a>GetBucketAccelerateConfiguration</a>
%%
%% </li> <li> <a>CreateBucket</a>
%%
%% </li> </ul>
put_bucket_accelerate_configuration(Client, Bucket, Input) ->
    put_bucket_accelerate_configuration(Client, Bucket, Input, []).
put_bucket_accelerate_configuration(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?accelerate"],
    SuccessStatusCode = undefined,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the permissions on an existing bucket using access control lists
%% (ACL). For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using
%% ACLs</a>. To set the ACL of a bucket, you must have <code>WRITE_ACP</code>
%% permission.
%%
%% You can use one of the following two ways to set a bucket's permissions:
%%
%% <ul> <li> Specify the ACL in the request body
%%
%% </li> <li> Specify permissions using request headers
%%
%% </li> </ul> <note> You cannot specify access permission using both the
%% body and the request headers.
%%
%% </note> Depending on your application needs, you may choose to set the ACL
%% on a bucket using either the request body or the headers. For example, if
%% you have an existing application that updates a bucket ACL using the
%% request body, then you can continue to use that approach.
%%
%% <b>Access Permissions</b>
%%
%% You can set access permissions using one of the following methods:
%%
%% <ul> <li> Specify a canned ACL with the <code>x-amz-acl</code> request
%% header. Amazon S3 supports a set of predefined ACLs, known as <i>canned
%% ACLs</i>. Each canned ACL has a predefined set of grantees and
%% permissions. Specify the canned ACL name as the value of
%% <code>x-amz-acl</code>. If you use this header, you cannot use other
%% access control-specific headers in your request. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
%% ACL</a>.
%%
%% </li> <li> Specify access permissions explicitly with the
%% <code>x-amz-grant-read</code>, <code>x-amz-grant-read-acp</code>,
%% <code>x-amz-grant-write-acp</code>, and
%% <code>x-amz-grant-full-control</code> headers. When using these headers,
%% you specify explicit access permissions and grantees (AWS accounts or
%% Amazon S3 groups) who will receive the permission. If you use these
%% ACL-specific headers, you cannot use the <code>x-amz-acl</code> header to
%% set a canned ACL. These parameters map to the set of permissions that
%% Amazon S3 supports in an ACL. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access
%% Control List (ACL) Overview</a>.
%%
%% You specify each grantee as a type=value pair, where the type is one of
%% the following:
%%
%% <ul> <li> <code>id</code> – if the value specified is the canonical user
%% ID of an AWS account
%%
%% </li> <li> <code>uri</code> – if you are granting permissions to a
%% predefined group
%%
%% </li> <li> <code>emailAddress</code> – if the value specified is the email
%% address of an AWS account
%%
%% <note> Using email addresses to specify a grantee is only supported in the
%% following AWS Regions:
%%
%% <ul> <li> US East (N. Virginia)
%%
%% </li> <li> US West (N. California)
%%
%% </li> <li> US West (Oregon)
%%
%% </li> <li> Asia Pacific (Singapore)
%%
%% </li> <li> Asia Pacific (Sydney)
%%
%% </li> <li> Asia Pacific (Tokyo)
%%
%% </li> <li> Europe (Ireland)
%%
%% </li> <li> South America (São Paulo)
%%
%% </li> </ul> For a list of all the Amazon S3 supported Regions and
%% endpoints, see <a
%% href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions
%% and Endpoints</a> in the AWS General Reference.
%%
%% </note> </li> </ul> For example, the following
%% <code>x-amz-grant-write</code> header grants create, overwrite, and delete
%% objects permission to LogDelivery group predefined by Amazon S3 and two
%% AWS accounts identified by their email addresses.
%%
%% <code>x-amz-grant-write:
%% uri="http://acs.amazonaws.com/groups/s3/LogDelivery", id="111122223333",
%% id="555566667777" </code>
%%
%% </li> </ul> You can use either a canned ACL or specify access permissions
%% explicitly. You cannot do both.
%%
%% <b>Grantee Values</b>
%%
%% You can specify the person (grantee) to whom you're assigning access
%% rights (using request elements) in the following ways:
%%
%% <ul> <li> By the person's ID:
%%
%% <code>&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
%% xsi:type="CanonicalUser"&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt;
%% &lt;/Grantee&gt;</code>
%%
%% DisplayName is optional and ignored in the request
%%
%% </li> <li> By URI:
%%
%% <code>&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
%% xsi:type="Group"&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;</code>
%%
%% </li> <li> By Email address:
%%
%% <code>&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
%% xsi:type="AmazonCustomerByEmail"&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;lt;/Grantee&gt;</code>
%%
%% The grantee is resolved to the CanonicalUser and, in a response to a GET
%% Object acl request, appears as the CanonicalUser.
%%
%% <note> Using email addresses to specify a grantee is only supported in the
%% following AWS Regions:
%%
%% <ul> <li> US East (N. Virginia)
%%
%% </li> <li> US West (N. California)
%%
%% </li> <li> US West (Oregon)
%%
%% </li> <li> Asia Pacific (Singapore)
%%
%% </li> <li> Asia Pacific (Sydney)
%%
%% </li> <li> Asia Pacific (Tokyo)
%%
%% </li> <li> Europe (Ireland)
%%
%% </li> <li> South America (São Paulo)
%%
%% </li> </ul> For a list of all the Amazon S3 supported Regions and
%% endpoints, see <a
%% href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions
%% and Endpoints</a> in the AWS General Reference.
%%
%% </note> </li> </ul> <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>CreateBucket</a>
%%
%% </li> <li> <a>DeleteBucket</a>
%%
%% </li> <li> <a>GetObjectAcl</a>
%%
%% </li> </ul>
put_bucket_acl(Client, Bucket, Input) ->
    put_bucket_acl(Client, Bucket, Input, []).
put_bucket_acl(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?acl"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-write">>, <<"GrantWrite">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets an analytics configuration for the bucket (specified by the
%% analytics configuration ID). You can have up to 1,000 analytics
%% configurations per bucket.
%%
%% You can choose to have storage class analysis export analysis reports sent
%% to a comma-separated values (CSV) flat file. See the
%% <code>DataExport</code> request element. Reports are updated daily and are
%% based on the object filters that you configure. When selecting data
%% export, you specify a destination bucket and an optional destination
%% prefix where the file is written. You can export the data to a destination
%% bucket in a different account. However, the destination bucket must be in
%% the same Region as the bucket that you are making the PUT analytics
%% configuration to. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html">Amazon
%% S3 Analytics – Storage Class Analysis</a>.
%%
%% <important> You must create a bucket policy on the destination bucket
%% where the exported file is written to grant permissions to Amazon S3 to
%% write objects to the bucket. For an example policy, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9">Granting
%% Permissions for Amazon S3 Inventory and Storage Class Analysis</a>.
%%
%% </important> To use this operation, you must have permissions to perform
%% the <code>s3:PutAnalyticsConfiguration</code> action. The bucket owner has
%% this permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% <p class="title"> <b>Special Errors</b>
%%
%% <ul> <li> <ul> <li> <i>HTTP Error: HTTP 400 Bad Request</i>
%%
%% </li> <li> <i>Code: InvalidArgument</i>
%%
%% </li> <li> <i>Cause: Invalid argument.</i>
%%
%% </li> </ul> </li> <li> <ul> <li> <i>HTTP Error: HTTP 400 Bad Request</i>
%%
%% </li> <li> <i>Code: TooManyConfigurations</i>
%%
%% </li> <li> <i>Cause: You are attempting to create a new configuration but
%% have already reached the 1,000-configuration limit.</i>
%%
%% </li> </ul> </li> <li> <ul> <li> <i>HTTP Error: HTTP 403 Forbidden</i>
%%
%% </li> <li> <i>Code: AccessDenied</i>
%%
%% </li> <li> <i>Cause: You are not the owner of the specified bucket, or you
%% do not have the s3:PutAnalyticsConfiguration bucket permission to set the
%% configuration on the bucket.</i>
%%
%% </li> </ul> </li> </ul> <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li>
%%
%% </li> <li>
%%
%% </li> <li>
%%
%% </li> </ul>
put_bucket_analytics_configuration(Client, Bucket, Input) ->
    put_bucket_analytics_configuration(Client, Bucket, Input, []).
put_bucket_analytics_configuration(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?analytics"],
    SuccessStatusCode = undefined,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the <code>cors</code> configuration for your bucket. If the
%% configuration exists, Amazon S3 replaces it.
%%
%% To use this operation, you must be allowed to perform the
%% <code>s3:PutBucketCORS</code> action. By default, the bucket owner has
%% this permission and can grant it to others.
%%
%% You set this configuration on a bucket so that the bucket can service
%% cross-origin requests. For example, you might want to enable a request
%% whose origin is <code>http://www.example.com</code> to access your Amazon
%% S3 bucket at <code>my.example.bucket.com</code> by using the browser's
%% <code>XMLHttpRequest</code> capability.
%%
%% To enable cross-origin resource sharing (CORS) on a bucket, you add the
%% <code>cors</code> subresource to the bucket. The <code>cors</code>
%% subresource is an XML document in which you configure rules that identify
%% origins and the HTTP methods that can be executed on your bucket. The
%% document is limited to 64 KB in size.
%%
%% When Amazon S3 receives a cross-origin request (or a pre-flight OPTIONS
%% request) against a bucket, it evaluates the <code>cors</code>
%% configuration on the bucket and uses the first <code>CORSRule</code> rule
%% that matches the incoming browser request to enable a cross-origin
%% request. For a rule to match, the following conditions must be met:
%%
%% <ul> <li> The request's <code>Origin</code> header must match
%% <code>AllowedOrigin</code> elements.
%%
%% </li> <li> The request method (for example, GET, PUT, HEAD, and so on) or
%% the <code>Access-Control-Request-Method</code> header in case of a
%% pre-flight <code>OPTIONS</code> request must be one of the
%% <code>AllowedMethod</code> elements.
%%
%% </li> <li> Every header specified in the
%% <code>Access-Control-Request-Headers</code> request header of a pre-flight
%% request must match an <code>AllowedHeader</code> element.
%%
%% </li> </ul> For more information about CORS, go to <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling
%% Cross-Origin Resource Sharing</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>GetBucketCors</a>
%%
%% </li> <li> <a>DeleteBucketCors</a>
%%
%% </li> <li> <a>RESTOPTIONSobject</a>
%%
%% </li> </ul>
put_bucket_cors(Client, Bucket, Input) ->
    put_bucket_cors(Client, Bucket, Input, []).
put_bucket_cors(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?cors"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc This implementation of the <code>PUT</code> operation uses the
%% <code>encryption</code> subresource to set the default encryption state of
%% an existing bucket.
%%
%% This implementation of the <code>PUT</code> operation sets default
%% encryption for a bucket using server-side encryption with Amazon
%% S3-managed keys SSE-S3 or AWS KMS customer master keys (CMKs) (SSE-KMS).
%% For information about the Amazon S3 default encryption feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon
%% S3 Default Bucket Encryption</a>.
%%
%% <important> This operation requires AWS Signature Version 4. For more
%% information, see <a href="sig-v4-authenticating-requests.html">
%% Authenticating Requests (AWS Signature Version 4)</a>.
%%
%% </important> To use this operation, you must have permissions to perform
%% the <code>s3:PutEncryptionConfiguration</code> action. The bucket owner
%% has this permission by default. The bucket owner can grant this permission
%% to others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a> in the Amazon Simple
%% Storage Service Developer Guide.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>GetBucketEncryption</a>
%%
%% </li> <li> <a>DeleteBucketEncryption</a>
%%
%% </li> </ul>
put_bucket_encryption(Client, Bucket, Input) ->
    put_bucket_encryption(Client, Bucket, Input, []).
put_bucket_encryption(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?encryption"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc This implementation of the <code>PUT</code> operation adds an
%% inventory configuration (identified by the inventory ID) to the bucket.
%% You can have up to 1,000 inventory configurations per bucket.
%%
%% Amazon S3 inventory generates inventories of the objects in the bucket on
%% a daily or weekly basis, and the results are published to a flat file. The
%% bucket that is inventoried is called the <i>source</i> bucket, and the
%% bucket where the inventory flat file is stored is called the
%% <i>destination</i> bucket. The <i>destination</i> bucket must be in the
%% same AWS Region as the <i>source</i> bucket.
%%
%% When you configure an inventory for a <i>source</i> bucket, you specify
%% the <i>destination</i> bucket where you want the inventory to be stored,
%% and whether to generate the inventory daily or weekly. You can also
%% configure what object metadata to include and whether to inventory all
%% object versions or only current versions. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html">Amazon
%% S3 Inventory</a> in the Amazon Simple Storage Service Developer Guide.
%%
%% <important> You must create a bucket policy on the <i>destination</i>
%% bucket to grant permissions to Amazon S3 to write objects to the bucket in
%% the defined location. For an example policy, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9">
%% Granting Permissions for Amazon S3 Inventory and Storage Class
%% Analysis</a>.
%%
%% </important> To use this operation, you must have permissions to perform
%% the <code>s3:PutInventoryConfiguration</code> action. The bucket owner has
%% this permission by default and can grant this permission to others. For
%% more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a> in the Amazon Simple
%% Storage Service Developer Guide.
%%
%% <p class="title"> <b>Special Errors</b>
%%
%% <ul> <li> <p class="title"> <b>HTTP 400 Bad Request Error</b>
%%
%% <ul> <li> <i>Code:</i> InvalidArgument
%%
%% </li> <li> <i>Cause:</i> Invalid Argument
%%
%% </li> </ul> </li> <li> <p class="title"> <b>HTTP 400 Bad Request Error</b>
%%
%% <ul> <li> <i>Code:</i> TooManyConfigurations
%%
%% </li> <li> <i>Cause:</i> You are attempting to create a new configuration
%% but have already reached the 1,000-configuration limit.
%%
%% </li> </ul> </li> <li> <p class="title"> <b>HTTP 403 Forbidden Error</b>
%%
%% <ul> <li> <i>Code:</i> AccessDenied
%%
%% </li> <li> <i>Cause:</i> You are not the owner of the specified bucket, or
%% you do not have the <code>s3:PutInventoryConfiguration</code> bucket
%% permission to set the configuration on the bucket.
%%
%% </li> </ul> </li> </ul> <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>GetBucketInventoryConfiguration</a>
%%
%% </li> <li> <a>DeleteBucketInventoryConfiguration</a>
%%
%% </li> <li> <a>ListBucketInventoryConfigurations</a>
%%
%% </li> </ul>
put_bucket_inventory_configuration(Client, Bucket, Input) ->
    put_bucket_inventory_configuration(Client, Bucket, Input, []).
put_bucket_inventory_configuration(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?inventory"],
    SuccessStatusCode = undefined,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc <important> For an updated version of this API, see
%% <a>PutBucketLifecycleConfiguration</a>. This version has been deprecated.
%% Existing lifecycle configurations will work. For new lifecycle
%% configurations, use the updated API.
%%
%% </important> Creates a new lifecycle configuration for the bucket or
%% replaces an existing lifecycle configuration. For information about
%% lifecycle configuration, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object
%% Lifecycle Management</a> in the <i>Amazon Simple Storage Service Developer
%% Guide</i>.
%%
%% By default, all Amazon S3 resources, including buckets, objects, and
%% related subresources (for example, lifecycle configuration and website
%% configuration) are private. Only the resource owner, the AWS account that
%% created the resource, can access it. The resource owner can optionally
%% grant access permissions to others by writing an access policy. For this
%% operation, users must get the <code>s3:PutLifecycleConfiguration</code>
%% permission.
%%
%% You can also explicitly deny permissions. Explicit denial also supersedes
%% any other permissions. If you want to prevent users or accounts from
%% removing or deleting objects from your bucket, you must deny them
%% permissions for the following actions:
%%
%% <ul> <li> <code>s3:DeleteObject</code>
%%
%% </li> <li> <code>s3:DeleteObjectVersion</code>
%%
%% </li> <li> <code>s3:PutLifecycleConfiguration</code>
%%
%% </li> </ul> For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to your Amazon S3 Resources</a> in the <i>Amazon Simple
%% Storage Service Developer Guide</i>.
%%
%% For more examples of transitioning objects to storage classes such as
%% STANDARD_IA or ONEZONE_IA, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#lifecycle-configuration-examples">Examples
%% of Lifecycle Configuration</a>.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>GetBucketLifecycle</a>(Deprecated)
%%
%% </li> <li> <a>GetBucketLifecycleConfiguration</a>
%%
%% </li> <li>
%%
%% </li> <li> By default, a resource owner—in this case, a bucket owner,
%% which is the AWS account that created the bucket—can perform any of the
%% operations. A resource owner can also grant others permission to perform
%% the operation. For more information, see the following topics in the
%% Amazon Simple Storage Service Developer Guide:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying
%% Permissions in a Policy</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to your Amazon S3 Resources</a>
%%
%% </li> </ul> </li> </ul>
put_bucket_lifecycle(Client, Bucket, Input) ->
    put_bucket_lifecycle(Client, Bucket, Input, []).
put_bucket_lifecycle(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?lifecycle"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new lifecycle configuration for the bucket or replaces an
%% existing lifecycle configuration. For information about lifecycle
%% configuration, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% <note> Bucket lifecycle configuration now supports specifying a lifecycle
%% rule using an object key name prefix, one or more object tags, or a
%% combination of both. Accordingly, this section describes the latest API.
%% The previous version of the API supported filtering based only on an
%% object key name prefix, which is supported for backward compatibility. For
%% the related API description, see <a>PutBucketLifecycle</a>.
%%
%% </note> <b>Rules</b>
%%
%% You specify the lifecycle configuration in your request body. The
%% lifecycle configuration is specified as XML consisting of one or more
%% rules. Each rule consists of the following:
%%
%% <ul> <li> Filter identifying a subset of objects to which the rule
%% applies. The filter can be based on a key name prefix, object tags, or a
%% combination of both.
%%
%% </li> <li> Status whether the rule is in effect.
%%
%% </li> <li> One or more lifecycle transition and expiration actions that
%% you want Amazon S3 to perform on the objects identified by the filter. If
%% the state of your bucket is versioning-enabled or versioning-suspended,
%% you can have many versions of the same object (one current version and
%% zero or more noncurrent versions). Amazon S3 provides predefined actions
%% that you can specify for current and noncurrent object versions.
%%
%% </li> </ul> For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object
%% Lifecycle Management</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html">Lifecycle
%% Configuration Elements</a>.
%%
%% <b>Permissions</b>
%%
%% By default, all Amazon S3 resources are private, including buckets,
%% objects, and related subresources (for example, lifecycle configuration
%% and website configuration). Only the resource owner (that is, the AWS
%% account that created it) can access the resource. The resource owner can
%% optionally grant access permissions to others by writing an access policy.
%% For this operation, a user must get the s3:PutLifecycleConfiguration
%% permission.
%%
%% You can also explicitly deny permissions. Explicit deny also supersedes
%% any other permissions. If you want to block users or accounts from
%% removing or deleting objects from your bucket, you must deny them
%% permissions for the following actions:
%%
%% <ul> <li> s3:DeleteObject
%%
%% </li> <li> s3:DeleteObjectVersion
%%
%% </li> <li> s3:PutLifecycleConfiguration
%%
%% </li> </ul> For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% The following are related to <code>PutBucketLifecycleConfiguration</code>:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-configuration-examples.html">Examples
%% of Lifecycle Configuration</a>
%%
%% </li> <li> <a>GetBucketLifecycleConfiguration</a>
%%
%% </li> <li> <a>DeleteBucketLifecycle</a>
%%
%% </li> </ul>
put_bucket_lifecycle_configuration(Client, Bucket, Input) ->
    put_bucket_lifecycle_configuration(Client, Bucket, Input, []).
put_bucket_lifecycle_configuration(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?lifecycle"],
    SuccessStatusCode = undefined,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Set the logging parameters for a bucket and to specify permissions
%% for who can view and modify the logging parameters. All logs are saved to
%% buckets in the same AWS Region as the source bucket. To set the logging
%% status of a bucket, you must be the bucket owner.
%%
%% The bucket owner is automatically granted FULL_CONTROL to all logs. You
%% use the <code>Grantee</code> request element to grant access to other
%% people. The <code>Permissions</code> request element specifies the kind of
%% access the grantee has to the logs.
%%
%% <b>Grantee Values</b>
%%
%% You can specify the person (grantee) to whom you're assigning access
%% rights (using request elements) in the following ways:
%%
%% <ul> <li> By the person's ID:
%%
%% <code>&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
%% xsi:type="CanonicalUser"&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt;
%% &lt;/Grantee&gt;</code>
%%
%% DisplayName is optional and ignored in the request.
%%
%% </li> <li> By Email address:
%%
%% <code> &lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
%% xsi:type="AmazonCustomerByEmail"&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;&lt;/Grantee&gt;</code>
%%
%% The grantee is resolved to the CanonicalUser and, in a response to a GET
%% Object acl request, appears as the CanonicalUser.
%%
%% </li> <li> By URI:
%%
%% <code>&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
%% xsi:type="Group"&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;</code>
%%
%% </li> </ul> To enable logging, you use LoggingEnabled and its children
%% request elements. To disable logging, you use an empty BucketLoggingStatus
%% request element:
%%
%% <code>&lt;BucketLoggingStatus
%% xmlns="http://doc.s3.amazonaws.com/2006-03-01" /&gt;</code>
%%
%% For more information about server access logging, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerLogs.html">Server
%% Access Logging</a>.
%%
%% For more information about creating a bucket, see <a>CreateBucket</a>. For
%% more information about returning the logging status of a bucket, see
%% <a>GetBucketLogging</a>.
%%
%% The following operations are related to <code>PutBucketLogging</code>:
%%
%% <ul> <li> <a>PutObject</a>
%%
%% </li> <li> <a>DeleteBucket</a>
%%
%% </li> <li> <a>CreateBucket</a>
%%
%% </li> <li> <a>GetBucketLogging</a>
%%
%% </li> </ul>
put_bucket_logging(Client, Bucket, Input) ->
    put_bucket_logging(Client, Bucket, Input, []).
put_bucket_logging(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?logging"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets a metrics configuration (specified by the metrics configuration
%% ID) for the bucket. You can have up to 1,000 metrics configurations per
%% bucket. If you're updating an existing metrics configuration, note that
%% this is a full replacement of the existing metrics configuration. If you
%% don't include the elements you want to keep, they are erased.
%%
%% To use this operation, you must have permissions to perform the
%% <code>s3:PutMetricsConfiguration</code> action. The bucket owner has this
%% permission by default. The bucket owner can grant this permission to
%% others. For more information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% For information about CloudWatch request metrics for Amazon S3, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring
%% Metrics with Amazon CloudWatch</a>.
%%
%% The following operations are related to
%% <code>PutBucketMetricsConfiguration</code>:
%%
%% <ul> <li> <a>DeleteBucketMetricsConfiguration</a>
%%
%% </li> <li> <a>PutBucketMetricsConfiguration</a>
%%
%% </li> <li> <a>ListBucketMetricsConfigurations</a>
%%
%% </li> </ul> <code>GetBucketLifecycle</code> has the following special
%% error:
%%
%% <ul> <li> Error code: <code>TooManyConfigurations</code>
%%
%% <ul> <li> Description: You are attempting to create a new configuration
%% but have already reached the 1,000-configuration limit.
%%
%% </li> <li> HTTP Status Code: HTTP 400 Bad Request
%%
%% </li> </ul> </li> </ul>
put_bucket_metrics_configuration(Client, Bucket, Input) ->
    put_bucket_metrics_configuration(Client, Bucket, Input, []).
put_bucket_metrics_configuration(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?metrics"],
    SuccessStatusCode = undefined,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc No longer used, see the <a>PutBucketNotificationConfiguration</a>
%% operation.
put_bucket_notification(Client, Bucket, Input) ->
    put_bucket_notification(Client, Bucket, Input, []).
put_bucket_notification(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?notification"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables notifications of specified events for a bucket. For more
%% information about event notifications, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring
%% Event Notifications</a>.
%%
%% Using this API, you can replace an existing notification configuration.
%% The configuration is an XML file that defines the event types that you
%% want Amazon S3 to publish and the destination where you want Amazon S3 to
%% publish an event notification when it detects an event of the specified
%% type.
%%
%% By default, your bucket has no event notifications configured. That is,
%% the notification configuration will be an empty
%% <code>NotificationConfiguration</code>.
%%
%% <code>&lt;NotificationConfiguration&gt;</code>
%%
%% <code>&lt;/NotificationConfiguration&gt;</code>
%%
%% This operation replaces the existing notification configuration with the
%% configuration you include in the request body.
%%
%% After Amazon S3 receives this request, it first verifies that any Amazon
%% Simple Notification Service (Amazon SNS) or Amazon Simple Queue Service
%% (Amazon SQS) destination exists, and that the bucket owner has permission
%% to publish to it by sending a test notification. In the case of AWS Lambda
%% destinations, Amazon S3 verifies that the Lambda function permissions
%% grant Amazon S3 permission to invoke the function from the Amazon S3
%% bucket. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring
%% Notifications for Amazon S3 Events</a>.
%%
%% You can disable notifications by adding the empty
%% NotificationConfiguration element.
%%
%% By default, only the bucket owner can configure notifications on a bucket.
%% However, bucket owners can use a bucket policy to grant permission to
%% other users to set this configuration with
%% <code>s3:PutBucketNotification</code> permission.
%%
%% <note> The PUT notification is an atomic operation. For example, suppose
%% your notification configuration includes SNS topic, SQS queue, and Lambda
%% function configurations. When you send a PUT request with this
%% configuration, Amazon S3 sends test messages to your SNS topic. If the
%% message fails, the entire PUT operation will fail, and Amazon S3 will not
%% add the configuration to your bucket.
%%
%% </note> <b>Responses</b>
%%
%% If the configuration in the request body includes only one
%% <code>TopicConfiguration</code> specifying only the
%% <code>s3:ReducedRedundancyLostObject</code> event type, the response will
%% also include the <code>x-amz-sns-test-message-id</code> header containing
%% the message ID of the test notification sent to the topic.
%%
%% The following operation is related to
%% <code>PutBucketNotificationConfiguration</code>:
%%
%% <ul> <li> <a>GetBucketNotificationConfiguration</a>
%%
%% </li> </ul>
put_bucket_notification_configuration(Client, Bucket, Input) ->
    put_bucket_notification_configuration(Client, Bucket, Input, []).
put_bucket_notification_configuration(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?notification"],
    SuccessStatusCode = undefined,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Applies an Amazon S3 bucket policy to an Amazon S3 bucket. If you are
%% using an identity other than the root user of the AWS account that owns
%% the bucket, the calling identity must have the
%% <code>PutBucketPolicy</code> permissions on the specified bucket and
%% belong to the bucket owner's account in order to use this operation.
%%
%% If you don't have <code>PutBucketPolicy</code> permissions, Amazon S3
%% returns a <code>403 Access Denied</code> error. If you have the correct
%% permissions, but you're not using an identity that belongs to the bucket
%% owner's account, Amazon S3 returns a <code>405 Method Not Allowed</code>
%% error.
%%
%% <important> As a security precaution, the root user of the AWS account
%% that owns a bucket can always use this operation, even if the policy
%% explicitly denies the root user the ability to perform this action.
%%
%% </important> For more information about bucket policies, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using
%% Bucket Policies and User Policies</a>.
%%
%% The following operations are related to <code>PutBucketPolicy</code>:
%%
%% <ul> <li> <a>CreateBucket</a>
%%
%% </li> <li> <a>DeleteBucket</a>
%%
%% </li> </ul>
put_bucket_policy(Client, Bucket, Input) ->
    put_bucket_policy(Client, Bucket, Input, []).
put_bucket_policy(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?policy"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-confirm-remove-self-bucket-access">>, <<"ConfirmRemoveSelfBucketAccess">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a replication configuration or replaces an existing one. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a>
%% in the <i>Amazon S3 Developer Guide</i>.
%%
%% <note> To perform this operation, the user or role performing the
%% operation must have the <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">iam:PassRole</a>
%% permission.
%%
%% </note> Specify the replication configuration in the request body. In the
%% replication configuration, you provide the name of the destination bucket
%% where you want Amazon S3 to replicate objects, the IAM role that Amazon S3
%% can assume to replicate objects on your behalf, and other relevant
%% information.
%%
%% A replication configuration must include at least one rule, and can
%% contain a maximum of 1,000. Each rule identifies a subset of objects to
%% replicate by filtering the objects in the source bucket. To choose
%% additional subsets of objects to replicate, add a rule for each subset.
%% All rules must specify the same destination bucket.
%%
%% To specify a subset of the objects in the source bucket to apply a
%% replication rule to, add the Filter element as a child of the Rule
%% element. You can filter objects based on an object key prefix, one or more
%% object tags, or both. When you add the Filter element in the
%% configuration, you must also add the following elements:
%% <code>DeleteMarkerReplication</code>, <code>Status</code>, and
%% <code>Priority</code>.
%%
%% For information about enabling versioning on a bucket, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html">Using
%% Versioning</a>.
%%
%% By default, a resource owner, in this case the AWS account that created
%% the bucket, can perform this operation. The resource owner can also grant
%% others permissions to perform the operation. For more information about
%% permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying
%% Permissions in a Policy</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% <b>Handling Replication of Encrypted Objects</b>
%%
%% By default, Amazon S3 doesn't replicate objects that are stored at rest
%% using server-side encryption with CMKs stored in AWS KMS. To replicate AWS
%% KMS-encrypted objects, add the following:
%% <code>SourceSelectionCriteria</code>, <code>SseKmsEncryptedObjects</code>,
%% <code>Status</code>, <code>EncryptionConfiguration</code>, and
%% <code>ReplicaKmsKeyID</code>. For information about replication
%% configuration, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-config-for-kms-objects.html">Replicating
%% Objects Created with SSE Using CMKs stored in AWS KMS</a>.
%%
%% For information on <code>PutBucketReplication</code> errors, see
%% <a>ReplicationErrorCodeList</a>
%%
%% The following operations are related to <code>PutBucketReplication</code>:
%%
%% <ul> <li> <a>GetBucketReplication</a>
%%
%% </li> <li> <a>DeleteBucketReplication</a>
%%
%% </li> </ul>
put_bucket_replication(Client, Bucket, Input) ->
    put_bucket_replication(Client, Bucket, Input, []).
put_bucket_replication(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?replication"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-bucket-object-lock-token">>, <<"Token">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the request payment configuration for a bucket. By default, the
%% bucket owner pays for downloads from the bucket. This configuration
%% parameter enables the bucket owner (only) to specify that the person
%% requesting the download will be charged for the download. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html">Requester
%% Pays Buckets</a>.
%%
%% The following operations are related to
%% <code>PutBucketRequestPayment</code>:
%%
%% <ul> <li> <a>CreateBucket</a>
%%
%% </li> <li> <a>GetBucketRequestPayment</a>
%%
%% </li> </ul>
put_bucket_request_payment(Client, Bucket, Input) ->
    put_bucket_request_payment(Client, Bucket, Input, []).
put_bucket_request_payment(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?requestPayment"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the tags for a bucket.
%%
%% Use tags to organize your AWS bill to reflect your own cost structure. To
%% do this, sign up to get your AWS account bill with tag key values
%% included. Then, to see the cost of combined resources, organize your
%% billing information according to resources with the same tag key values.
%% For example, you can tag several resources with a specific application
%% name, and then organize your billing information to see the total cost of
%% that application across several services. For more information, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Cost
%% Allocation and Tagging</a>.
%%
%% <note> Within a bucket, if you add a tag that has the same key as an
%% existing tag, the new value overwrites the old value. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/CostAllocTagging.html">Using
%% Cost Allocation in Amazon S3 Bucket Tags</a>.
%%
%% </note> To use this operation, you must have permissions to perform the
%% <code>s3:PutBucketTagging</code> action. The bucket owner has this
%% permission by default and can grant this permission to others. For more
%% information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a>.
%%
%% <code>PutBucketTagging</code> has the following special errors:
%%
%% <ul> <li> Error code: <code>InvalidTagError</code>
%%
%% <ul> <li> Description: The tag provided was not a valid tag. This error
%% can occur if the tag did not pass input validation. For information about
%% tag restrictions, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined
%% Tag Restrictions</a> and <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html">AWS-Generated
%% Cost Allocation Tag Restrictions</a>.
%%
%% </li> </ul> </li> <li> Error code: <code>MalformedXMLError</code>
%%
%% <ul> <li> Description: The XML provided does not match the schema.
%%
%% </li> </ul> </li> <li> Error code: <code>OperationAbortedError </code>
%%
%% <ul> <li> Description: A conflicting conditional operation is currently in
%% progress against this resource. Please try again.
%%
%% </li> </ul> </li> <li> Error code: <code>InternalError</code>
%%
%% <ul> <li> Description: The service was unable to apply the provided tag to
%% the bucket.
%%
%% </li> </ul> </li> </ul> The following operations are related to
%% <code>PutBucketTagging</code>:
%%
%% <ul> <li> <a>GetBucketTagging</a>
%%
%% </li> <li> <a>DeleteBucketTagging</a>
%%
%% </li> </ul>
put_bucket_tagging(Client, Bucket, Input) ->
    put_bucket_tagging(Client, Bucket, Input, []).
put_bucket_tagging(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?tagging"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the versioning state of an existing bucket. To set the
%% versioning state, you must be the bucket owner.
%%
%% You can set the versioning state with one of the following values:
%%
%% <b>Enabled</b>—Enables versioning for the objects in the bucket. All
%% objects added to the bucket receive a unique version ID.
%%
%% <b>Suspended</b>—Disables versioning for the objects in the bucket. All
%% objects added to the bucket receive the version ID null.
%%
%% If the versioning state has never been set on a bucket, it has no
%% versioning state; a <a>GetBucketVersioning</a> request does not return a
%% versioning state value.
%%
%% If the bucket owner enables MFA Delete in the bucket versioning
%% configuration, the bucket owner must include the <code>x-amz-mfa
%% request</code> header and the <code>Status</code> and the
%% <code>MfaDelete</code> request elements in a request to set the versioning
%% state of the bucket.
%%
%% <important> If you have an object expiration lifecycle policy in your
%% non-versioned bucket and you want to maintain the same permanent delete
%% behavior when you enable versioning, you must add a noncurrent expiration
%% policy. The noncurrent expiration lifecycle policy will manage the deletes
%% of the noncurrent object versions in the version-enabled bucket. (A
%% version-enabled bucket maintains one current and zero or more noncurrent
%% object versions.) For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-and-other-bucket-config">Lifecycle
%% and Versioning</a>.
%%
%% </important> <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>CreateBucket</a>
%%
%% </li> <li> <a>DeleteBucket</a>
%%
%% </li> <li> <a>GetBucketVersioning</a>
%%
%% </li> </ul>
put_bucket_versioning(Client, Bucket, Input) ->
    put_bucket_versioning(Client, Bucket, Input, []).
put_bucket_versioning(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?versioning"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-mfa">>, <<"MFA">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the configuration of the website that is specified in the
%% <code>website</code> subresource. To configure a bucket as a website, you
%% can add this subresource on the bucket with website configuration
%% information such as the file name of the index document and any redirect
%% rules. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting
%% Websites on Amazon S3</a>.
%%
%% This PUT operation requires the <code>S3:PutBucketWebsite</code>
%% permission. By default, only the bucket owner can configure the website
%% attached to a bucket; however, bucket owners can allow other users to set
%% the website configuration by writing a bucket policy that grants them the
%% <code>S3:PutBucketWebsite</code> permission.
%%
%% To redirect all website requests sent to the bucket's website endpoint,
%% you add a website configuration with the following elements. Because all
%% requests are sent to another website, you don't need to provide index
%% document name for the bucket.
%%
%% <ul> <li> <code>WebsiteConfiguration</code>
%%
%% </li> <li> <code>RedirectAllRequestsTo</code>
%%
%% </li> <li> <code>HostName</code>
%%
%% </li> <li> <code>Protocol</code>
%%
%% </li> </ul> If you want granular control over redirects, you can use the
%% following elements to add routing rules that describe conditions for
%% redirecting requests and information about the redirect destination. In
%% this case, the website configuration must provide an index document for
%% the bucket, because some requests might not be redirected.
%%
%% <ul> <li> <code>WebsiteConfiguration</code>
%%
%% </li> <li> <code>IndexDocument</code>
%%
%% </li> <li> <code>Suffix</code>
%%
%% </li> <li> <code>ErrorDocument</code>
%%
%% </li> <li> <code>Key</code>
%%
%% </li> <li> <code>RoutingRules</code>
%%
%% </li> <li> <code>RoutingRule</code>
%%
%% </li> <li> <code>Condition</code>
%%
%% </li> <li> <code>HttpErrorCodeReturnedEquals</code>
%%
%% </li> <li> <code>KeyPrefixEquals</code>
%%
%% </li> <li> <code>Redirect</code>
%%
%% </li> <li> <code>Protocol</code>
%%
%% </li> <li> <code>HostName</code>
%%
%% </li> <li> <code>ReplaceKeyPrefixWith</code>
%%
%% </li> <li> <code>ReplaceKeyWith</code>
%%
%% </li> <li> <code>HttpRedirectCode</code>
%%
%% </li> </ul> Amazon S3 has a limitation of 50 routing rules per website
%% configuration. If you require more than 50 routing rules, you can use
%% object redirect. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html">Configuring
%% an Object Redirect</a> in the <i>Amazon Simple Storage Service Developer
%% Guide</i>.
put_bucket_website(Client, Bucket, Input) ->
    put_bucket_website(Client, Bucket, Input, []).
put_bucket_website(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?website"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds an object to a bucket. You must have WRITE permissions on a
%% bucket to add an object to it.
%%
%% Amazon S3 never adds partial objects; if you receive a success response,
%% Amazon S3 added the entire object to the bucket.
%%
%% Amazon S3 is a distributed system. If it receives multiple write requests
%% for the same object simultaneously, it overwrites all but the last object
%% written. Amazon S3 does not provide object locking; if you need this, make
%% sure to build it into your application layer or use versioning instead.
%%
%% To ensure that data is not corrupted traversing the network, use the
%% <code>Content-MD5</code> header. When you use this header, Amazon S3
%% checks the object against the provided MD5 value and, if they do not
%% match, returns an error. Additionally, you can calculate the MD5 while
%% putting an object to Amazon S3 and compare the returned ETag to the
%% calculated MD5 value.
%%
%% <note> The <code>Content-MD5</code> header is required for any request to
%% upload an object with a retention period configured using Amazon S3 Object
%% Lock. For more information about Amazon S3 Object Lock, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html">Amazon
%% S3 Object Lock Overview</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
%%
%% </note> <b>Server-side Encryption</b>
%%
%% You can optionally request server-side encryption. With server-side
%% encryption, Amazon S3 encrypts your data as it writes it to disks in its
%% data centers and decrypts the data when you access it. You have the option
%% to provide your own encryption key or use AWS managed encryption keys. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html">Using
%% Server-Side Encryption</a>.
%%
%% <b>Access Control List (ACL)-Specific Request Headers</b>
%%
%% You can use headers to grant ACL- based permissions. By default, all
%% objects are private. Only the owner has full access control. When adding a
%% new object, you can grant permissions to individual AWS accounts or to
%% predefined groups defined by Amazon S3. These permissions are then added
%% to the ACL on the object. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access
%% Control List (ACL) Overview</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html">Managing
%% ACLs Using the REST API</a>.
%%
%% <b>Storage Class Options</b>
%%
%% By default, Amazon S3 uses the STANDARD storage class to store newly
%% created objects. The STANDARD storage class provides high durability and
%% high availability. Depending on performance needs, you can specify a
%% different storage class. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage
%% Classes</a> in the <i>Amazon S3 Service Developer Guide</i>.
%%
%% <b>Versioning</b>
%%
%% If you enable versioning for a bucket, Amazon S3 automatically generates a
%% unique version ID for the object being stored. Amazon S3 returns this ID
%% in the response. When you enable versioning for a bucket, if Amazon S3
%% receives multiple write requests for the same object simultaneously, it
%% stores all of the objects.
%%
%% For more information about versioning, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html">Adding
%% Objects to Versioning Enabled Buckets</a>. For information about returning
%% the versioning state of a bucket, see <a>GetBucketVersioning</a>.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>CopyObject</a>
%%
%% </li> <li> <a>DeleteObject</a>
%%
%% </li> </ul>
put_object(Client, Bucket, Key, Input) ->
    put_object(Client, Bucket, Key, Input, []).
put_object(Client, Bucket, Key, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"Cache-Control">>, <<"CacheControl">>},
                       {<<"Content-Disposition">>, <<"ContentDisposition">>},
                       {<<"Content-Encoding">>, <<"ContentEncoding">>},
                       {<<"Content-Language">>, <<"ContentLanguage">>},
                       {<<"Content-Length">>, <<"ContentLength">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"Content-Type">>, <<"ContentType">>},
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
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
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

%% @doc Uses the <code>acl</code> subresource to set the access control list
%% (ACL) permissions for an object that already exists in a bucket. You must
%% have <code>WRITE_ACP</code> permission to set the ACL of an object.
%%
%% Depending on your application needs, you can choose to set the ACL on an
%% object using either the request body or the headers. For example, if you
%% have an existing application that updates a bucket ACL using the request
%% body, you can continue to use that approach. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access
%% Control List (ACL) Overview</a> in the <i>Amazon S3 Developer Guide</i>.
%%
%% <b>Access Permissions</b>
%%
%% You can set access permissions using one of the following methods:
%%
%% <ul> <li> Specify a canned ACL with the <code>x-amz-acl</code> request
%% header. Amazon S3 supports a set of predefined ACLs, known as canned ACLs.
%% Each canned ACL has a predefined set of grantees and permissions. Specify
%% the canned ACL name as the value of <code>x-amz-ac</code>l. If you use
%% this header, you cannot use other access control-specific headers in your
%% request. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
%% ACL</a>.
%%
%% </li> <li> Specify access permissions explicitly with the
%% <code>x-amz-grant-read</code>, <code>x-amz-grant-read-acp</code>,
%% <code>x-amz-grant-write-acp</code>, and
%% <code>x-amz-grant-full-control</code> headers. When using these headers,
%% you specify explicit access permissions and grantees (AWS accounts or
%% Amazon S3 groups) who will receive the permission. If you use these
%% ACL-specific headers, you cannot use <code>x-amz-acl</code> header to set
%% a canned ACL. These parameters map to the set of permissions that Amazon
%% S3 supports in an ACL. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access
%% Control List (ACL) Overview</a>.
%%
%% You specify each grantee as a type=value pair, where the type is one of
%% the following:
%%
%% <ul> <li> <code>id</code> – if the value specified is the canonical user
%% ID of an AWS account
%%
%% </li> <li> <code>uri</code> – if you are granting permissions to a
%% predefined group
%%
%% </li> <li> <code>emailAddress</code> – if the value specified is the email
%% address of an AWS account
%%
%% <note> Using email addresses to specify a grantee is only supported in the
%% following AWS Regions:
%%
%% <ul> <li> US East (N. Virginia)
%%
%% </li> <li> US West (N. California)
%%
%% </li> <li> US West (Oregon)
%%
%% </li> <li> Asia Pacific (Singapore)
%%
%% </li> <li> Asia Pacific (Sydney)
%%
%% </li> <li> Asia Pacific (Tokyo)
%%
%% </li> <li> Europe (Ireland)
%%
%% </li> <li> South America (São Paulo)
%%
%% </li> </ul> For a list of all the Amazon S3 supported Regions and
%% endpoints, see <a
%% href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions
%% and Endpoints</a> in the AWS General Reference.
%%
%% </note> </li> </ul> For example, the following
%% <code>x-amz-grant-read</code> header grants list objects permission to the
%% two AWS accounts identified by their email addresses.
%%
%% <code>x-amz-grant-read: emailAddress="xyz@amazon.com",
%% emailAddress="abc@amazon.com" </code>
%%
%% </li> </ul> You can use either a canned ACL or specify access permissions
%% explicitly. You cannot do both.
%%
%% <b>Grantee Values</b>
%%
%% You can specify the person (grantee) to whom you're assigning access
%% rights (using request elements) in the following ways:
%%
%% <ul> <li> By the person's ID:
%%
%% <code>&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
%% xsi:type="CanonicalUser"&gt;&lt;ID&gt;&lt;&gt;ID&lt;&gt;&lt;/ID&gt;&lt;DisplayName&gt;&lt;&gt;GranteesEmail&lt;&gt;&lt;/DisplayName&gt;
%% &lt;/Grantee&gt;</code>
%%
%% DisplayName is optional and ignored in the request.
%%
%% </li> <li> By URI:
%%
%% <code>&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
%% xsi:type="Group"&gt;&lt;URI&gt;&lt;&gt;http://acs.amazonaws.com/groups/global/AuthenticatedUsers&lt;&gt;&lt;/URI&gt;&lt;/Grantee&gt;</code>
%%
%% </li> <li> By Email address:
%%
%% <code>&lt;Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
%% xsi:type="AmazonCustomerByEmail"&gt;&lt;EmailAddress&gt;&lt;&gt;Grantees@email.com&lt;&gt;&lt;/EmailAddress&gt;lt;/Grantee&gt;</code>
%%
%% The grantee is resolved to the CanonicalUser and, in a response to a GET
%% Object acl request, appears as the CanonicalUser.
%%
%% <note> Using email addresses to specify a grantee is only supported in the
%% following AWS Regions:
%%
%% <ul> <li> US East (N. Virginia)
%%
%% </li> <li> US West (N. California)
%%
%% </li> <li> US West (Oregon)
%%
%% </li> <li> Asia Pacific (Singapore)
%%
%% </li> <li> Asia Pacific (Sydney)
%%
%% </li> <li> Asia Pacific (Tokyo)
%%
%% </li> <li> Europe (Ireland)
%%
%% </li> <li> South America (São Paulo)
%%
%% </li> </ul> For a list of all the Amazon S3 supported Regions and
%% endpoints, see <a
%% href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions
%% and Endpoints</a> in the AWS General Reference.
%%
%% </note> </li> </ul> <b>Versioning</b>
%%
%% The ACL of an object is set at the object version level. By default, PUT
%% sets the ACL of the current version of an object. To set the ACL of a
%% different version, use the <code>versionId</code> subresource.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>CopyObject</a>
%%
%% </li> <li> <a>GetObject</a>
%%
%% </li> </ul>
put_object_acl(Client, Bucket, Key, Input) ->
    put_object_acl(Client, Bucket, Key, Input, []).
put_object_acl(Client, Bucket, Key, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?acl"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-acl">>, <<"ACL">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-grant-full-control">>, <<"GrantFullControl">>},
                       {<<"x-amz-grant-read">>, <<"GrantRead">>},
                       {<<"x-amz-grant-read-acp">>, <<"GrantReadACP">>},
                       {<<"x-amz-grant-write">>, <<"GrantWrite">>},
                       {<<"x-amz-grant-write-acp">>, <<"GrantWriteACP">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Applies a Legal Hold configuration to the specified object.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
%% Objects</a>
%%
%% </li> </ul>
put_object_legal_hold(Client, Bucket, Key, Input) ->
    put_object_legal_hold(Client, Bucket, Key, Input, []).
put_object_legal_hold(Client, Bucket, Key, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?legal-hold"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Places an Object Lock configuration on the specified bucket. The rule
%% specified in the Object Lock configuration will be applied by default to
%% every new object placed in the specified bucket.
%%
%% <note> <code>DefaultRetention</code> requires either Days or Years. You
%% can't specify both at the same time.
%%
%% </note> <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
%% Objects</a>
%%
%% </li> </ul>
put_object_lock_configuration(Client, Bucket, Input) ->
    put_object_lock_configuration(Client, Bucket, Input, []).
put_object_lock_configuration(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?object-lock"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-bucket-object-lock-token">>, <<"Token">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
%% Objects</a>
%%
%% </li> </ul>
put_object_retention(Client, Bucket, Key, Input) ->
    put_object_retention(Client, Bucket, Key, Input, []).
put_object_retention(Client, Bucket, Key, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?retention"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-bypass-governance-retention">>, <<"BypassGovernanceRetention">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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
%% A tag is a key-value pair. You can associate tags with an object by
%% sending a PUT request against the tagging subresource that is associated
%% with the object. You can retrieve tags by sending a GET request. For more
%% information, see <a>GetObjectTagging</a>.
%%
%% For tagging-related restrictions related to characters and encodings, see
%% <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">Tag
%% Restrictions</a>. Note that Amazon S3 limits the maximum number of tags to
%% 10 tags per object.
%%
%% To use this operation, you must have permission to perform the
%% <code>s3:PutObjectTagging</code> action. By default, the bucket owner has
%% this permission and can grant this permission to others.
%%
%% To put tags of any other version, use the <code>versionId</code> query
%% parameter. You also need permission for the
%% <code>s3:PutObjectVersionTagging</code> action.
%%
%% For information about the Amazon S3 object tagging feature, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html">Object
%% Tagging</a>.
%%
%% <p class="title"> <b>Special Errors</b>
%%
%% <ul> <li> <p class="title"> <b/>
%%
%% <ul> <li> <i>Code: InvalidTagError </i>
%%
%% </li> <li> <i>Cause: The tag provided was not a valid tag. This error can
%% occur if the tag did not pass input validation. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html">Object
%% Tagging</a>.</i>
%%
%% </li> </ul> </li> <li> <p class="title"> <b/>
%%
%% <ul> <li> <i>Code: MalformedXMLError </i>
%%
%% </li> <li> <i>Cause: The XML provided does not match the schema.</i>
%%
%% </li> </ul> </li> <li> <ul> <li> <i>Code: OperationAbortedError </i>
%%
%% </li> <li> <i>Cause: A conflicting conditional operation is currently in
%% progress against this resource. Please try again.</i>
%%
%% </li> </ul> </li> <li> <ul> <li> <i>Code: InternalError</i>
%%
%% </li> <li> <i>Cause: The service was unable to apply the provided tag to
%% the object.</i>
%%
%% </li> </ul> </li> </ul> <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>GetObjectTagging</a>
%%
%% </li> </ul>
put_object_tagging(Client, Bucket, Key, Input) ->
    put_object_tagging(Client, Bucket, Key, Input, []).
put_object_tagging(Client, Bucket, Key, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?tagging"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc Creates or modifies the <code>PublicAccessBlock</code> configuration
%% for an Amazon S3 bucket. To use this operation, you must have the
%% <code>s3:PutBucketPublicAccessBlock</code> permission. For more
%% information about Amazon S3 permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying
%% Permissions in a Policy</a>.
%%
%% <important> When Amazon S3 evaluates the <code>PublicAccessBlock</code>
%% configuration for a bucket or an object, it checks the
%% <code>PublicAccessBlock</code> configuration for both the bucket (or the
%% bucket that contains the object) and the bucket owner's account. If the
%% <code>PublicAccessBlock</code> configurations are different between the
%% bucket and the account, Amazon S3 uses the most restrictive combination of
%% the bucket-level and account-level settings.
%%
%% </important> For more information about when Amazon S3 considers a bucket
%% or an object public, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The
%% Meaning of "Public"</a>.
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>GetPublicAccessBlock</a>
%%
%% </li> <li> <a>DeletePublicAccessBlock</a>
%%
%% </li> <li> <a>GetBucketPolicyStatus</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">Using
%% Amazon S3 Block Public Access</a>
%%
%% </li> </ul>
put_public_access_block(Client, Bucket, Input) ->
    put_public_access_block(Client, Bucket, Input, []).
put_public_access_block(Client, Bucket, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "?publicAccessBlock"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-MD5">>, <<"ContentMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Restores an archived copy of an object back into Amazon S3
%%
%% This operation performs the following types of requests:
%%
%% <ul> <li> <code>select</code> - Perform a select query on an archived
%% object
%%
%% </li> <li> <code>restore an archive</code> - Restore an archived object
%%
%% </li> </ul> To use this operation, you must have permissions to perform
%% the <code>s3:RestoreObject</code> action. The bucket owner has this
%% permission by default and can grant this permission to others. For more
%% information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions
%% Related to Bucket Subresource Operations</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Managing
%% Access Permissions to Your Amazon S3 Resources</a> in the <i>Amazon Simple
%% Storage Service Developer Guide</i>.
%%
%% <b>Querying Archives with Select Requests</b>
%%
%% You use a select type of request to perform SQL queries on archived
%% objects. The archived objects that are being queried by the select request
%% must be formatted as uncompressed comma-separated values (CSV) files. You
%% can run queries and custom analytics on your archived data without having
%% to restore your data to a hotter Amazon S3 tier. For an overview about
%% select requests, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/querying-glacier-archives.html">Querying
%% Archived Objects</a> in the <i>Amazon Simple Storage Service Developer
%% Guide</i>.
%%
%% When making a select request, do the following:
%%
%% <ul> <li> Define an output location for the select query's output. This
%% must be an Amazon S3 bucket in the same AWS Region as the bucket that
%% contains the archive object that is being queried. The AWS account that
%% initiates the job must have permissions to write to the S3 bucket. You can
%% specify the storage class and encryption for the output objects stored in
%% the bucket. For more information about output, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/querying-glacier-archives.html">Querying
%% Archived Objects</a> in the <i>Amazon Simple Storage Service Developer
%% Guide</i>.
%%
%% For more information about the <code>S3</code> structure in the request
%% body, see the following:
%%
%% <ul> <li> <a>PutObject</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Managing
%% Access with ACLs</a> in the <i>Amazon Simple Storage Service Developer
%% Guide</i>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Protecting
%% Data Using Server-Side Encryption</a> in the <i>Amazon Simple Storage
%% Service Developer Guide</i>
%%
%% </li> </ul> </li> <li> Define the SQL expression for the
%% <code>SELECT</code> type of restoration for your query in the request
%% body's <code>SelectParameters</code> structure. You can use expressions
%% like the following examples.
%%
%% <ul> <li> The following expression returns all records from the specified
%% object.
%%
%% <code>SELECT * FROM Object</code>
%%
%% </li> <li> Assuming that you are not using any headers for data stored in
%% the object, you can specify columns with positional headers.
%%
%% <code>SELECT s._1, s._2 FROM Object s WHERE s._3 &gt; 100</code>
%%
%% </li> <li> If you have headers and you set the <code>fileHeaderInfo</code>
%% in the <code>CSV</code> structure in the request body to <code>USE</code>,
%% you can specify headers in the query. (If you set the
%% <code>fileHeaderInfo</code> field to <code>IGNORE</code>, the first row is
%% skipped for the query.) You cannot mix ordinal positions with header
%% column names.
%%
%% <code>SELECT s.Id, s.FirstName, s.SSN FROM S3Object s</code>
%%
%% </li> </ul> </li> </ul> For more information about using SQL with S3
%% Glacier Select restore, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-glacier-select-sql-reference.html">SQL
%% Reference for Amazon S3 Select and S3 Glacier Select</a> in the <i>Amazon
%% Simple Storage Service Developer Guide</i>.
%%
%% When making a select request, you can also do the following:
%%
%% <ul> <li> To expedite your queries, specify the <code>Expedited</code>
%% tier. For more information about tiers, see "Restoring Archives," later in
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
%% lifecycle policy.
%%
%% </li> <li> You can issue more than one select request on the same Amazon
%% S3 object. Amazon S3 doesn't deduplicate requests, so avoid issuing
%% duplicate requests.
%%
%% </li> <li> Amazon S3 accepts a select request even if the object has
%% already been restored. A select request doesn’t return error response
%% <code>409</code>.
%%
%% </li> </ul> <b>Restoring Archives</b>
%%
%% Objects in the GLACIER and DEEP_ARCHIVE storage classes are archived. To
%% access an archived object, you must first initiate a restore request. This
%% restores a temporary copy of the archived object. In a restore request,
%% you specify the number of days that you want the restored copy to exist.
%% After the specified period, Amazon S3 deletes the temporary copy but the
%% object remains archived in the GLACIER or DEEP_ARCHIVE storage class that
%% object was restored from.
%%
%% To restore a specific object version, you can provide a version ID. If you
%% don't provide a version ID, Amazon S3 restores the current version.
%%
%% The time it takes restore jobs to finish depends on which storage class
%% the object is being restored from and which data access tier you specify.
%%
%% When restoring an archived object (or using a select request), you can
%% specify one of the following data access tier options in the
%% <code>Tier</code> element of the request body:
%%
%% <ul> <li> <b> <code>Expedited</code> </b> - Expedited retrievals allow you
%% to quickly access your data stored in the GLACIER storage class when
%% occasional urgent requests for a subset of archives are required. For all
%% but the largest archived objects (250 MB+), data accessed using Expedited
%% retrievals are typically made available within 1–5 minutes. Provisioned
%% capacity ensures that retrieval capacity for Expedited retrievals is
%% available when you need it. Expedited retrievals and provisioned capacity
%% are not available for the DEEP_ARCHIVE storage class.
%%
%% </li> <li> <b> <code>Standard</code> </b> - S3 Standard retrievals allow
%% you to access any of your archived objects within several hours. This is
%% the default option for the GLACIER and DEEP_ARCHIVE retrieval requests
%% that do not specify the retrieval option. S3 Standard retrievals typically
%% complete within 3-5 hours from the GLACIER storage class and typically
%% complete within 12 hours from the DEEP_ARCHIVE storage class.
%%
%% </li> <li> <b> <code>Bulk</code> </b> - Bulk retrievals are Amazon S3
%% Glacier’s lowest-cost retrieval option, enabling you to retrieve large
%% amounts, even petabytes, of data inexpensively in a day. Bulk retrievals
%% typically complete within 5-12 hours from the GLACIER storage class and
%% typically complete within 48 hours from the DEEP_ARCHIVE storage class.
%%
%% </li> </ul> For more information about archive retrieval options and
%% provisioned capacity for <code>Expedited</code> data access, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html">Restoring
%% Archived Objects</a> in the <i>Amazon Simple Storage Service Developer
%% Guide</i>.
%%
%% You can use Amazon S3 restore speed upgrade to change the restore speed to
%% a faster speed while it is in progress. You upgrade the speed of an
%% in-progress restoration by issuing another restore request to the same
%% object, setting a new <code>Tier</code> request element. When issuing a
%% request to upgrade the restore tier, you must choose a tier that is faster
%% than the tier that the in-progress restore is using. You must not change
%% any other parameters, such as the <code>Days</code> request element. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html#restoring-objects-upgrade-tier.title.html">
%% Upgrading the Speed of an In-Progress Restore</a> in the <i>Amazon Simple
%% Storage Service Developer Guide</i>.
%%
%% To get the status of object restoration, you can send a <code>HEAD</code>
%% request. Operations return the <code>x-amz-restore</code> header, which
%% provides information about the restoration status, in the response. You
%% can use Amazon S3 event notifications to notify you when a restore is
%% initiated or completed. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring
%% Amazon S3 Event Notifications</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
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
%% configuration, see <a>PutBucketLifecycleConfiguration</a> and <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object
%% Lifecycle Management</a> in <i>Amazon Simple Storage Service Developer
%% Guide</i>.
%%
%% <b>Responses</b>
%%
%% A successful operation returns either the <code>200 OK</code> or <code>202
%% Accepted</code> status code.
%%
%% <ul> <li> If the object copy is not previously restored, then Amazon S3
%% returns <code>202 Accepted</code> in the response.
%%
%% </li> <li> If the object copy is previously restored, Amazon S3 returns
%% <code>200 OK</code> in the response.
%%
%% </li> </ul> <p class="title"> <b>Special Errors</b>
%%
%% <ul> <li> <p class="title"> <b/>
%%
%% <ul> <li> <i>Code: RestoreAlreadyInProgress</i>
%%
%% </li> <li> <i>Cause: Object restore is already in progress. (This error
%% does not apply to SELECT type requests.)</i>
%%
%% </li> <li> <i>HTTP Status Code: 409 Conflict</i>
%%
%% </li> <li> <i>SOAP Fault Code Prefix: Client</i>
%%
%% </li> </ul> </li> <li> <p class="title"> <b/>
%%
%% <ul> <li> <i>Code: GlacierExpeditedRetrievalNotAvailable</i>
%%
%% </li> <li> <i>Cause: S3 Glacier expedited retrievals are currently not
%% available. Try again later. (Returned if there is insufficient capacity to
%% process the Expedited request. This error applies only to Expedited
%% retrievals and not to S3 Standard or Bulk retrievals.)</i>
%%
%% </li> <li> <i>HTTP Status Code: 503</i>
%%
%% </li> <li> <i>SOAP Fault Code Prefix: N/A</i>
%%
%% </li> </ul> </li> </ul> <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>PutBucketLifecycleConfiguration</a>
%%
%% </li> <li> <a>GetBucketNotificationConfiguration</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-glacier-select-sql-reference.html">SQL
%% Reference for Amazon S3 Select and S3 Glacier Select </a> in the <i>Amazon
%% Simple Storage Service Developer Guide</i>
%%
%% </li> </ul>
restore_object(Client, Bucket, Key, Input) ->
    restore_object(Client, Bucket, Key, Input, []).
restore_object(Client, Bucket, Key, Input0, Options) ->
    Method = post,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?restore"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
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

%% @doc This operation filters the contents of an Amazon S3 object based on a
%% simple structured query language (SQL) statement. In the request, along
%% with the SQL expression, you must also specify a data serialization format
%% (JSON, CSV, or Apache Parquet) of the object. Amazon S3 uses this format
%% to parse object data into records, and returns only records that match the
%% specified SQL expression. You must also specify the data serialization
%% format for the response.
%%
%% For more information about Amazon S3 Select, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/selecting-content-from-objects.html">Selecting
%% Content from Objects</a> in the <i>Amazon Simple Storage Service Developer
%% Guide</i>.
%%
%% For more information about using SQL with Amazon S3 Select, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-glacier-select-sql-reference.html">
%% SQL Reference for Amazon S3 Select and S3 Glacier Select</a> in the
%% <i>Amazon Simple Storage Service Developer Guide</i>.
%%
%% <p/> <b>Permissions</b>
%%
%% You must have <code>s3:GetObject</code> permission for this
%% operation. Amazon S3 Select does not support anonymous access. For more
%% information about permissions, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying
%% Permissions in a Policy</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
%%
%% <p/> <i>Object Data Formats</i>
%%
%% You can use Amazon S3 Select to query objects that have the following
%% format properties:
%%
%% <ul> <li> <i>CSV, JSON, and Parquet</i> - Objects must be in CSV, JSON, or
%% Parquet format.
%%
%% </li> <li> <i>UTF-8</i> - UTF-8 is the only encoding type Amazon S3 Select
%% supports.
%%
%% </li> <li> <i>GZIP or BZIP2</i> - CSV and JSON files can be compressed
%% using GZIP or BZIP2. GZIP and BZIP2 are the only compression formats that
%% Amazon S3 Select supports for CSV and JSON files. Amazon S3 Select
%% supports columnar compression for Parquet using GZIP or Snappy. Amazon S3
%% Select does not support whole-object compression for Parquet objects.
%%
%% </li> <li> <i>Server-side encryption</i> - Amazon S3 Select supports
%% querying objects that are protected with server-side encryption.
%%
%% For objects that are encrypted with customer-provided encryption keys
%% (SSE-C), you must use HTTPS, and you must use the headers that are
%% documented in the <a>GetObject</a>. For more information about SSE-C, see
%% <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side
%% Encryption (Using Customer-Provided Encryption Keys)</a> in the <i>Amazon
%% Simple Storage Service Developer Guide</i>.
%%
%% For objects that are encrypted with Amazon S3 managed encryption keys
%% (SSE-S3) and customer master keys (CMKs) stored in AWS Key Management
%% Service (SSE-KMS), server-side encryption is handled transparently, so you
%% don't need to specify anything. For more information about server-side
%% encryption, including SSE-S3 and SSE-KMS, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Protecting
%% Data Using Server-Side Encryption</a> in the <i>Amazon Simple Storage
%% Service Developer Guide</i>.
%%
%% </li> </ul> <b>Working with the Response Body</b>
%%
%% Given the response size is unknown, Amazon S3 Select streams the response
%% as a series of messages and includes a <code>Transfer-Encoding</code>
%% header with <code>chunked</code> as its value in the response. For more
%% information, see <a>RESTSelectObjectAppendix</a> .
%%
%% <p/> <b>GetObject Support</b>
%%
%% The <code>SelectObjectContent</code> operation does not support the
%% following <code>GetObject</code> functionality. For more information, see
%% <a>GetObject</a>.
%%
%% <ul> <li> <code>Range</code>: Although you can specify a scan range for an
%% Amazon S3 Select request (see <a>SelectObjectContentRequest$ScanRange</a>
%% in the request parameters), you cannot specify the range of bytes of an
%% object to return.
%%
%% </li> <li> GLACIER, DEEP_ARCHIVE and REDUCED_REDUNDANCY storage classes:
%% You cannot specify the GLACIER, DEEP_ARCHIVE, or
%% <code>REDUCED_REDUNDANCY</code> storage classes. For more information,
%% about storage classes see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#storage-class-intro">Storage
%% Classes</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.
%%
%% </li> </ul> <p/> <b>Special Errors</b>
%%
%% For a list of special errors for this operation, see
%% <a>SelectObjectContentErrorCodeList</a>
%%
%% <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>GetObject</a>
%%
%% </li> <li> <a>GetBucketLifecycleConfiguration</a>
%%
%% </li> <li> <a>PutBucketLifecycleConfiguration</a>
%%
%% </li> </ul>
select_object_content(Client, Bucket, Key, Input) ->
    select_object_content(Client, Bucket, Key, Input, []).
select_object_content(Client, Bucket, Key, Input0, Options) ->
    Method = post,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), "?select&select-type=2"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Uploads a part in a multipart upload.
%%
%% <note> In this operation, you provide part data in your request. However,
%% you have an option to specify your existing Amazon S3 object as a data
%% source for the part you are uploading. To upload a part from an existing
%% object, you use the <a>UploadPartCopy</a> operation.
%%
%% </note> You must initiate a multipart upload (see
%% <a>CreateMultipartUpload</a>) before you can upload any part. In response
%% to your initiate request, Amazon S3 returns an upload ID, a unique
%% identifier, that you must include in your upload part request.
%%
%% Part numbers can be any number from 1 to 10,000, inclusive. A part number
%% uniquely identifies a part and also defines its position within the object
%% being created. If you upload a new part using the same part number that
%% was used with a previous part, the previously uploaded part is
%% overwritten. Each part must be at least 5 MB in size, except the last
%% part. There is no size limit on the last part of your multipart upload.
%%
%% To ensure that data is not corrupted when traversing the network, specify
%% the <code>Content-MD5</code> header in the upload part request. Amazon S3
%% checks the part data against the provided MD5 value. If they do not match,
%% Amazon S3 returns an error.
%%
%% <b>Note:</b> After you initiate multipart upload and upload one or more
%% parts, you must either complete or abort multipart upload in order to stop
%% getting charged for storage of the uploaded parts. Only after you either
%% complete or abort multipart upload, Amazon S3 frees up the parts storage
%% and stops charging you for the parts storage.
%%
%% For more information on multipart uploads, go to <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart
%% Upload Overview</a> in the <i>Amazon Simple Storage Service Developer
%% Guide </i>.
%%
%% For information on the permissions required to use the multipart upload
%% API, go to <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
%% Upload API and Permissions</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
%%
%% You can optionally request server-side encryption where Amazon S3 encrypts
%% your data as it writes it to disks in its data centers and decrypts it for
%% you when you access it. You have the option of providing your own
%% encryption key, or you can use the AWS managed encryption keys. If you
%% choose to provide your own encryption key, the request headers you provide
%% in the request must match the headers you used in the request to initiate
%% the upload by using <a>CreateMultipartUpload</a>. For more information, go
%% to <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html">Using
%% Server-Side Encryption</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
%%
%% Server-side encryption is supported by the S3 Multipart Upload actions.
%% Unless you are using a customer-provided encryption key, you don't need to
%% specify the encryption parameters in each UploadPart request. Instead, you
%% only need to specify the server-side encryption parameters in the initial
%% Initiate Multipart request. For more information, see
%% <a>CreateMultipartUpload</a>.
%%
%% If you requested server-side encryption using a customer-provided
%% encryption key in your initiate multipart upload request, you must provide
%% identical encryption information in each part upload using the following
%% headers.
%%
%% <ul> <li> x-amz-server-side​-encryption​-customer-algorithm
%%
%% </li> <li> x-amz-server-side​-encryption​-customer-key
%%
%% </li> <li> x-amz-server-side​-encryption​-customer-key-MD5
%%
%% </li> </ul> <p class="title"> <b>Special Errors</b>
%%
%% <ul> <li> <p class="title"> <b/>
%%
%% <ul> <li> <i>Code: NoSuchUpload</i>
%%
%% </li> <li> <i>Cause: The specified multipart upload does not exist. The
%% upload ID might be invalid, or the multipart upload might have been
%% aborted or completed.</i>
%%
%% </li> <li> <i> HTTP Status Code: 404 Not Found </i>
%%
%% </li> <li> <i>SOAP Fault Code Prefix: Client</i>
%%
%% </li> </ul> </li> </ul> <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>CreateMultipartUpload</a>
%%
%% </li> <li> <a>CompleteMultipartUpload</a>
%%
%% </li> <li> <a>AbortMultipartUpload</a>
%%
%% </li> <li> <a>ListParts</a>
%%
%% </li> <li> <a>ListMultipartUploads</a>
%%
%% </li> </ul>
upload_part(Client, Bucket, Key, Input) ->
    upload_part(Client, Bucket, Key, Input, []).
upload_part(Client, Bucket, Key, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Content-Length">>, <<"ContentLength">>},
                       {<<"Content-MD5">>, <<"ContentMD5">>},
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
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
%% source. You specify the data source by adding the request header
%% <code>x-amz-copy-source</code> in your request and a byte range by adding
%% the request header <code>x-amz-copy-source-range</code> in your request.
%%
%% The minimum allowable part size for a multipart upload is 5 MB. For more
%% information about multipart upload limits, go to <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/qfacts.html">Quick
%% Facts</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.
%%
%% <note> Instead of using an existing object as part data, you might use the
%% <a>UploadPart</a> operation and provide data in your request.
%%
%% </note> You must initiate a multipart upload before you can upload any
%% part. In response to your initiate request. Amazon S3 returns a unique
%% identifier, the upload ID, that you must include in your upload part
%% request.
%%
%% For more information about using the <code>UploadPartCopy</code>
%% operation, see the following:
%%
%% <ul> <li> For conceptual information about multipart uploads, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading
%% Objects Using Multipart Upload</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
%%
%% </li> <li> For information about permissions required to use the multipart
%% upload API, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
%% Upload API and Permissions</a> in the <i>Amazon Simple Storage Service
%% Developer Guide</i>.
%%
%% </li> <li> For information about copying objects using a single atomic
%% operation vs. the multipart upload, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html">Operations
%% on Objects</a> in the <i>Amazon Simple Storage Service Developer
%% Guide</i>.
%%
%% </li> <li> For information about using server-side encryption with
%% customer-provided encryption keys with the UploadPartCopy operation, see
%% <a>CopyObject</a> and <a>UploadPart</a>.
%%
%% </li> </ul> Note the following additional considerations about the request
%% headers <code>x-amz-copy-source-if-match</code>,
%% <code>x-amz-copy-source-if-none-match</code>,
%% <code>x-amz-copy-source-if-unmodified-since</code>, and
%% <code>x-amz-copy-source-if-modified-since</code>:
%%
%% <ul> <li> <b>Consideration 1</b> - If both of the
%% <code>x-amz-copy-source-if-match</code> and
%% <code>x-amz-copy-source-if-unmodified-since</code> headers are present in
%% the request as follows:
%%
%% <code>x-amz-copy-source-if-match</code> condition evaluates to
%% <code>true</code>, and;
%%
%% <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to
%% <code>false</code>;
%%
%% Amazon S3 returns <code>200 OK</code> and copies the data.
%%
%% </li> <li> <b>Consideration 2</b> - If both of the
%% <code>x-amz-copy-source-if-none-match</code> and
%% <code>x-amz-copy-source-if-modified-since</code> headers are present in
%% the request as follows:
%%
%% <code>x-amz-copy-source-if-none-match</code> condition evaluates to
%% <code>false</code>, and;
%%
%% <code>x-amz-copy-source-if-modified-since</code> condition evaluates to
%% <code>true</code>;
%%
%% Amazon S3 returns <code>412 Precondition Failed</code> response code.
%%
%% </li> </ul> <b>Versioning</b>
%%
%% If your bucket has versioning enabled, you could have multiple versions of
%% the same object. By default, <code>x-amz-copy-source</code> identifies the
%% current version of the object to copy. If the current version is a delete
%% marker and you don't specify a versionId in the
%% <code>x-amz-copy-source</code>, Amazon S3 returns a 404 error, because the
%% object does not exist. If you specify versionId in the
%% <code>x-amz-copy-source</code> and the versionId is a delete marker,
%% Amazon S3 returns an HTTP 400 error, because you are not allowed to
%% specify a delete marker as a version for the
%% <code>x-amz-copy-source</code>.
%%
%% You can optionally specify a specific version of the source object to copy
%% by adding the <code>versionId</code> subresource as shown in the following
%% example:
%%
%% <code>x-amz-copy-source: /bucket/object?versionId=version id</code>
%%
%% <p class="title"> <b>Special Errors</b>
%%
%% <ul> <li> <p class="title"> <b/>
%%
%% <ul> <li> <i>Code: NoSuchUpload</i>
%%
%% </li> <li> <i>Cause: The specified multipart upload does not exist. The
%% upload ID might be invalid, or the multipart upload might have been
%% aborted or completed.</i>
%%
%% </li> <li> <i>HTTP Status Code: 404 Not Found</i>
%%
%% </li> </ul> </li> <li> <p class="title"> <b/>
%%
%% <ul> <li> <i>Code: InvalidRequest</i>
%%
%% </li> <li> <i>Cause: The specified copy source is not supported as a
%% byte-range copy source.</i>
%%
%% </li> <li> <i>HTTP Status Code: 400 Bad Request</i>
%%
%% </li> </ul> </li> </ul> <p class="title"> <b>Related Resources</b>
%%
%% <ul> <li> <a>CreateMultipartUpload</a>
%%
%% </li> <li> <a>UploadPart</a>
%%
%% </li> <li> <a>CompleteMultipartUpload</a>
%%
%% </li> <li> <a>AbortMultipartUpload</a>
%%
%% </li> <li> <a>ListParts</a>
%%
%% </li> <li> <a>ListMultipartUploads</a>
%%
%% </li> </ul>
upload_part_copy(Client, Bucket, Key, Input) ->
    upload_part_copy(Client, Bucket, Key, Input, []).
upload_part_copy(Client, Bucket, Key, Input0, Options) ->
    Method = put,
    Path = ["/", http_uri:encode(Bucket), "/", aws_util:encode_uri(Key, true), ""],
    SuccessStatusCode = undefined,
    
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
                       {<<"x-amz-request-payer">>, <<"RequestPayer">>},
                       {<<"x-amz-server-side-encryption-customer-algorithm">>, <<"SSECustomerAlgorithm">>},
                       {<<"x-amz-server-side-encryption-customer-key">>, <<"SSECustomerKey">>},
                       {<<"x-amz-server-side-encryption-customer-key-MD5">>, <<"SSECustomerKeyMD5">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
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

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Method, Path, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"s3">>},
    
    Host = get_host(<<"s3">>, Client1),
    
    URL = get_url(Host, Path, Client1),
    Headers1 = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"text/xml">>}
        | Headers0
    ],
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
            Result = aws_util:decode_xml(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.


get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  aws_util:encode_xml(Input).
