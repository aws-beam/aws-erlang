%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Secrets Manager
%%
%% Amazon Web Services Secrets Manager provides a service to enable you to
%% store, manage, and retrieve, secrets.
%%
%% This guide provides descriptions of the Secrets Manager API. For more
%% information about using this service, see the Amazon Web Services Secrets
%% Manager User Guide.
%%
%% API Version
%%
%% This version of the Secrets Manager API Reference documents the Secrets
%% Manager API version 2017-10-17.
%%
%% For a list of endpoints, see Amazon Web Services Secrets Manager
%% endpoints.
%%
%% Support and Feedback for Amazon Web Services Secrets Manager
%%
%% We welcome your feedback. Send your comments to
%% awssecretsmanager-feedback@amazon.com, or post your feedback and questions
%% in the Amazon Web Services Secrets Manager Discussion Forum. For more
%% information about the Amazon Web Services Discussion Forums, see Forums
%% Help.
%%
%% Logging API Requests
%%
%% Amazon Web Services Secrets Manager supports Amazon Web Services
%% CloudTrail, a service that records Amazon Web Services API calls for your
%% Amazon Web Services account and delivers log files to an Amazon S3 bucket.
%% By using information that's collected by Amazon Web Services
%% CloudTrail, you can determine the requests successfully made to Secrets
%% Manager, who made the request, when it was made, and so on. For more about
%% Amazon Web Services Secrets Manager and support for Amazon Web Services
%% CloudTrail, see Logging Amazon Web Services Secrets Manager Events with
%% Amazon Web Services CloudTrail in the Amazon Web Services Secrets Manager
%% User Guide. To learn more about CloudTrail, including enabling it and find
%% your log files, see the Amazon Web Services CloudTrail User Guide.
-module(aws_secrets_manager).

-export([cancel_rotate_secret/2,
         cancel_rotate_secret/3,
         create_secret/2,
         create_secret/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_secret/2,
         delete_secret/3,
         describe_secret/2,
         describe_secret/3,
         get_random_password/2,
         get_random_password/3,
         get_resource_policy/2,
         get_resource_policy/3,
         get_secret_value/2,
         get_secret_value/3,
         list_secret_version_ids/2,
         list_secret_version_ids/3,
         list_secrets/2,
         list_secrets/3,
         put_resource_policy/2,
         put_resource_policy/3,
         put_secret_value/2,
         put_secret_value/3,
         remove_regions_from_replication/2,
         remove_regions_from_replication/3,
         replicate_secret_to_regions/2,
         replicate_secret_to_regions/3,
         restore_secret/2,
         restore_secret/3,
         rotate_secret/2,
         rotate_secret/3,
         stop_replication_to_replica/2,
         stop_replication_to_replica/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_secret/2,
         update_secret/3,
         update_secret_version_stage/2,
         update_secret_version_stage/3,
         validate_resource_policy/2,
         validate_resource_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Turns off automatic rotation, and if a rotation is currently in
%% progress, cancels the rotation.
%%
%% If you cancel a rotation in progress, it can leave the `VersionStage'
%% labels in an unexpected state. You might need to remove the staging label
%% `AWSPENDING' from the partially created version. You also need to
%% determine whether to roll back to the previous version of the secret by
%% moving the staging label `AWSCURRENT' to the version that has
%% `AWSPENDING'. To determine which version has a specific staging label,
%% call `ListSecretVersionIds'. Then use `UpdateSecretVersionStage'
%% to change staging labels. For more information, see How rotation works.
%%
%% To turn on automatic rotation again, call `RotateSecret'.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:CancelRotateSecret'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
cancel_rotate_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_rotate_secret(Client, Input, []).
cancel_rotate_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelRotateSecret">>, Input, Options).

%% @doc Creates a new secret.
%%
%% A secret can be a password, a set of credentials such as a user name and
%% password, an OAuth token, or other secret information that you store in an
%% encrypted form in Secrets Manager. The secret also includes the connection
%% information to access a database or other service, which Secrets Manager
%% doesn't encrypt. A secret in Secrets Manager consists of both the
%% protected secret data and the important information needed to manage the
%% secret.
%%
%% For secrets that use managed rotation, you need to create the secret
%% through the managing service. For more information, see Secrets Manager
%% secrets managed by other Amazon Web Services services.
%%
%% For information about creating a secret in the console, see Create a
%% secret.
%%
%% To create a secret, you can provide the secret value to be encrypted in
%% either the `SecretString' parameter or the `SecretBinary'
%% parameter, but not both. If you include `SecretString' or
%% `SecretBinary' then Secrets Manager creates an initial secret version
%% and automatically attaches the staging label `AWSCURRENT' to it.
%%
%% For database credentials you want to rotate, for Secrets Manager to be
%% able to rotate the secret, you must make sure the JSON you store in the
%% `SecretString' matches the JSON structure of a database secret.
%%
%% If you don't specify an KMS encryption key, Secrets Manager uses the
%% Amazon Web Services managed key `aws/secretsmanager'. If this key
%% doesn't already exist in your account, then Secrets Manager creates it
%% for you automatically. All users and roles in the Amazon Web Services
%% account automatically have access to use `aws/secretsmanager'.
%% Creating `aws/secretsmanager' can result in a one-time significant
%% delay in returning the result.
%%
%% If the secret is in a different Amazon Web Services account from the
%% credentials calling the API, then you can't use
%% `aws/secretsmanager' to encrypt the secret, and you must create and
%% use a customer managed KMS key.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters except
%% `SecretBinary' or `SecretString' because it might be logged. For
%% more information, see Logging Secrets Manager events with CloudTrail.
%%
%% Required permissions: `secretsmanager:CreateSecret'. If you include
%% tags in the secret, you also need `secretsmanager:TagResource'. For
%% more information, see IAM policy actions for Secrets Manager and
%% Authentication and access control in Secrets Manager.
%%
%% To encrypt the secret with a KMS key other than `aws/secretsmanager',
%% you need `kms:GenerateDataKey' and `kms:Decrypt' permission to the
%% key.
create_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_secret(Client, Input, []).
create_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecret">>, Input, Options).

%% @doc Deletes the resource-based permission policy attached to the secret.
%%
%% To attach a policy to a secret, use `PutResourcePolicy'.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:DeleteResourcePolicy'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a secret and all of its versions.
%%
%% You can specify a recovery window during which you can restore the secret.
%% The minimum recovery window is 7 days. The default recovery window is 30
%% days. Secrets Manager attaches a `DeletionDate' stamp to the secret
%% that specifies the end of the recovery window. At the end of the recovery
%% window, Secrets Manager deletes the secret permanently.
%%
%% You can't delete a primary secret that is replicated to other Regions.
%% You must first delete the replicas using
%% `RemoveRegionsFromReplication', and then delete the primary secret.
%% When you delete a replica, it is deleted immediately.
%%
%% You can't directly delete a version of a secret. Instead, you remove
%% all staging labels from the version using `UpdateSecretVersionStage'.
%% This marks the version as deprecated, and then Secrets Manager can
%% automatically delete the version in the background.
%%
%% To determine whether an application still uses a secret, you can create an
%% Amazon CloudWatch alarm to alert you to any attempts to access a secret
%% during the recovery window. For more information, see Monitor secrets
%% scheduled for deletion.
%%
%% Secrets Manager performs the permanent secret deletion at the end of the
%% waiting period as a background task with low priority. There is no
%% guarantee of a specific time after the recovery window for the permanent
%% delete to occur.
%%
%% At any time before recovery window ends, you can use `RestoreSecret'
%% to remove the `DeletionDate' and cancel the deletion of the secret.
%%
%% When a secret is scheduled for deletion, you cannot retrieve the secret
%% value. You must first cancel the deletion with `RestoreSecret' and
%% then you can retrieve the secret.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:DeleteSecret'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
delete_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_secret(Client, Input, []).
delete_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecret">>, Input, Options).

%% @doc Retrieves the details of a secret.
%%
%% It does not include the encrypted secret value. Secrets Manager only
%% returns fields that have a value in the response.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:DescribeSecret'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
describe_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_secret(Client, Input, []).
describe_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSecret">>, Input, Options).

%% @doc Generates a random password.
%%
%% We recommend that you specify the maximum length and include every
%% character type that the system you are generating a password for can
%% support.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:GetRandomPassword'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
get_random_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_random_password(Client, Input, []).
get_random_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRandomPassword">>, Input, Options).

%% @doc Retrieves the JSON text of the resource-based policy document
%% attached to the secret.
%%
%% For more information about permissions policies attached to a secret, see
%% Permissions policies attached to a secret.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:GetResourcePolicy'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Retrieves the contents of the encrypted fields `SecretString' or
%% `SecretBinary' from the specified version of a secret, whichever
%% contains content.
%%
%% We recommend that you cache your secret values by using client-side
%% caching. Caching secrets improves speed and reduces your costs. For more
%% information, see Cache secrets for your applications.
%%
%% To retrieve the previous version of a secret, use `VersionStage' and
%% specify AWSPREVIOUS. To revert to the previous version of a secret, call
%% UpdateSecretVersionStage.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:GetSecretValue'. If the secret
%% is encrypted using a customer-managed key instead of the Amazon Web
%% Services managed key `aws/secretsmanager', then you also need
%% `kms:Decrypt' permissions for that key. For more information, see IAM
%% policy actions for Secrets Manager and Authentication and access control
%% in Secrets Manager.
get_secret_value(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_secret_value(Client, Input, []).
get_secret_value(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecretValue">>, Input, Options).

%% @doc Lists the versions of a secret.
%%
%% Secrets Manager uses staging labels to indicate the different versions of
%% a secret. For more information, see Secrets Manager concepts: Versions.
%%
%% To list the secrets in the account, use `ListSecrets'.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:ListSecretVersionIds'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
list_secret_version_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_secret_version_ids(Client, Input, []).
list_secret_version_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecretVersionIds">>, Input, Options).

%% @doc Lists the secrets that are stored by Secrets Manager in the Amazon
%% Web Services account, not including secrets that are marked for deletion.
%%
%% To see secrets marked for deletion, use the Secrets Manager console.
%%
%% ListSecrets is eventually consistent, however it might not reflect changes
%% from the last five minutes. To get the latest information for a specific
%% secret, use `DescribeSecret'.
%%
%% To list the versions of a secret, use `ListSecretVersionIds'.
%%
%% To get the secret value from `SecretString' or `SecretBinary',
%% call `GetSecretValue'.
%%
%% For information about finding secrets in the console, see Find secrets in
%% Secrets Manager.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:ListSecrets'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
list_secrets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_secrets(Client, Input, []).
list_secrets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecrets">>, Input, Options).

%% @doc Attaches a resource-based permission policy to a secret.
%%
%% A resource-based policy is optional. For more information, see
%% Authentication and access control for Secrets Manager
%%
%% For information about attaching a policy in the console, see Attach a
%% permissions policy to a secret.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:PutResourcePolicy'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Creates a new version with a new encrypted secret value and attaches
%% it to the secret.
%%
%% The version can contain a new `SecretString' value or a new
%% `SecretBinary' value.
%%
%% We recommend you avoid calling `PutSecretValue' at a sustained rate of
%% more than once every 10 minutes. When you update the secret value, Secrets
%% Manager creates a new version of the secret. Secrets Manager removes
%% outdated versions when there are more than 100, but it does not remove
%% versions created less than 24 hours ago. If you call `PutSecretValue'
%% more than once every 10 minutes, you create more versions than Secrets
%% Manager removes, and you will reach the quota for secret versions.
%%
%% You can specify the staging labels to attach to the new version in
%% `VersionStages'. If you don't include `VersionStages', then
%% Secrets Manager automatically moves the staging label `AWSCURRENT' to
%% this version. If this operation creates the first version for the secret,
%% then Secrets Manager automatically attaches the staging label
%% `AWSCURRENT' to it. If this operation moves the staging label
%% `AWSCURRENT' from another version to this version, then Secrets
%% Manager also automatically moves the staging label `AWSPREVIOUS' to
%% the version that `AWSCURRENT' was removed from.
%%
%% This operation is idempotent. If you call this operation with a
%% `ClientRequestToken' that matches an existing version's VersionId,
%% and you specify the same secret data, the operation succeeds but does
%% nothing. However, if the secret data is different, then the operation
%% fails because you can't modify an existing version; you can only
%% create new ones.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters except
%% `SecretBinary' or `SecretString' because it might be logged. For
%% more information, see Logging Secrets Manager events with CloudTrail.
%%
%% Required permissions: `secretsmanager:PutSecretValue'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
put_secret_value(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_secret_value(Client, Input, []).
put_secret_value(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSecretValue">>, Input, Options).

%% @doc For a secret that is replicated to other Regions, deletes the secret
%% replicas from the Regions you specify.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:RemoveRegionsFromReplication'.
%% For more information, see IAM policy actions for Secrets Manager and
%% Authentication and access control in Secrets Manager.
remove_regions_from_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_regions_from_replication(Client, Input, []).
remove_regions_from_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRegionsFromReplication">>, Input, Options).

%% @doc Replicates the secret to a new Regions.
%%
%% See Multi-Region secrets.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:ReplicateSecretToRegions'. For
%% more information, see IAM policy actions for Secrets Manager and
%% Authentication and access control in Secrets Manager.
replicate_secret_to_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    replicate_secret_to_regions(Client, Input, []).
replicate_secret_to_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplicateSecretToRegions">>, Input, Options).

%% @doc Cancels the scheduled deletion of a secret by removing the
%% `DeletedDate' time stamp.
%%
%% You can access a secret again after it has been restored.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:RestoreSecret'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
restore_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_secret(Client, Input, []).
restore_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreSecret">>, Input, Options).

%% @doc Configures and starts the asynchronous process of rotating the
%% secret.
%%
%% For information about rotation, see Rotate secrets in the Secrets Manager
%% User Guide. If you include the configuration parameters, the operation
%% sets the values for the secret and then immediately starts a rotation. If
%% you don't include the configuration parameters, the operation starts a
%% rotation with the values already stored in the secret.
%%
%% When rotation is successful, the `AWSPENDING' staging label might be
%% attached to the same version as the `AWSCURRENT' version, or it might
%% not be attached to any version. If the `AWSPENDING' staging label is
%% present but not attached to the same version as `AWSCURRENT', then any
%% later invocation of `RotateSecret' assumes that a previous rotation
%% request is still in progress and returns an error. When rotation is
%% unsuccessful, the `AWSPENDING' staging label might be attached to an
%% empty secret version. For more information, see Troubleshoot rotation in
%% the Secrets Manager User Guide.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:RotateSecret'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager. You also need
%% `lambda:InvokeFunction' permissions on the rotation function. For more
%% information, see Permissions for rotation.
rotate_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    rotate_secret(Client, Input, []).
rotate_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RotateSecret">>, Input, Options).

%% @doc Removes the link between the replica secret and the primary secret
%% and promotes the replica to a primary secret in the replica Region.
%%
%% You must call this operation from the Region in which you want to promote
%% the replica to a primary secret.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:StopReplicationToReplica'. For
%% more information, see IAM policy actions for Secrets Manager and
%% Authentication and access control in Secrets Manager.
stop_replication_to_replica(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_replication_to_replica(Client, Input, []).
stop_replication_to_replica(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopReplicationToReplica">>, Input, Options).

%% @doc Attaches tags to a secret.
%%
%% Tags consist of a key name and a value. Tags are part of the secret's
%% metadata. They are not associated with specific versions of the secret.
%% This operation appends tags to the existing list of tags.
%%
%% The following restrictions apply to tags:
%%
%% <ul> <li> Maximum number of tags per secret: 50
%%
%% </li> <li> Maximum key length: 127 Unicode characters in UTF-8
%%
%% </li> <li> Maximum value length: 255 Unicode characters in UTF-8
%%
%% </li> <li> Tag keys and values are case sensitive.
%%
%% </li> <li> Do not use the `aws:' prefix in your tag names or values
%% because Amazon Web Services reserves it for Amazon Web Services use. You
%% can't edit or delete tag names or values with this prefix. Tags with
%% this prefix do not count against your tags per secret limit.
%%
%% </li> <li> If you use your tagging schema across multiple services and
%% resources, other services might have restrictions on allowed characters.
%% Generally allowed characters: letters, spaces, and numbers representable
%% in UTF-8, plus the following special characters: + - = . _ : / @.
%%
%% </li> </ul> If you use tags as part of your security strategy, then adding
%% or removing a tag can change permissions. If successfully completing this
%% operation would result in you losing your permissions for this secret,
%% then the operation is blocked and returns an Access Denied error.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:TagResource'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes specific tags from a secret.
%%
%% This operation is idempotent. If a requested tag is not attached to the
%% secret, no error is returned and the secret metadata is unchanged.
%%
%% If you use tags as part of your security strategy, then removing a tag can
%% change permissions. If successfully completing this operation would result
%% in you losing your permissions for this secret, then the operation is
%% blocked and returns an Access Denied error.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:UntagResource'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the details of a secret, including metadata and the secret
%% value.
%%
%% To change the secret value, you can also use `PutSecretValue'.
%%
%% To change the rotation configuration of a secret, use `RotateSecret'
%% instead.
%%
%% To change a secret so that it is managed by another service, you need to
%% recreate the secret in that service. See Secrets Manager secrets managed
%% by other Amazon Web Services services.
%%
%% We recommend you avoid calling `UpdateSecret' at a sustained rate of
%% more than once every 10 minutes. When you call `UpdateSecret' to
%% update the secret value, Secrets Manager creates a new version of the
%% secret. Secrets Manager removes outdated versions when there are more than
%% 100, but it does not remove versions created less than 24 hours ago. If
%% you update the secret value more than once every 10 minutes, you create
%% more versions than Secrets Manager removes, and you will reach the quota
%% for secret versions.
%%
%% If you include `SecretString' or `SecretBinary' to create a new
%% secret version, Secrets Manager automatically moves the staging label
%% `AWSCURRENT' to the new version. Then it attaches the label
%% `AWSPREVIOUS' to the version that `AWSCURRENT' was removed from.
%%
%% If you call this operation with a `ClientRequestToken' that matches an
%% existing version's `VersionId', the operation results in an error.
%% You can't modify an existing version, you can only create a new
%% version. To remove a version, remove all staging labels from it. See
%% `UpdateSecretVersionStage'.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters except
%% `SecretBinary' or `SecretString' because it might be logged. For
%% more information, see Logging Secrets Manager events with CloudTrail.
%%
%% Required permissions: `secretsmanager:UpdateSecret'. For more
%% information, see IAM policy actions for Secrets Manager and Authentication
%% and access control in Secrets Manager. If you use a customer managed key,
%% you must also have `kms:GenerateDataKey', `kms:Encrypt', and
%% `kms:Decrypt' permissions on the key. If you change the KMS key and
%% you don't have `kms:Encrypt' permission to the new key, Secrets
%% Manager does not re-ecrypt existing secret versions with the new key. For
%% more information, see Secret encryption and decryption.
update_secret(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_secret(Client, Input, []).
update_secret(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecret">>, Input, Options).

%% @doc Modifies the staging labels attached to a version of a secret.
%%
%% Secrets Manager uses staging labels to track a version as it progresses
%% through the secret rotation process. Each staging label can be attached to
%% only one version at a time. To add a staging label to a version when it is
%% already attached to another version, Secrets Manager first removes it from
%% the other version first and then attaches it to this one. For more
%% information about versions and staging labels, see Concepts: Version.
%%
%% The staging labels that you specify in the `VersionStage' parameter
%% are added to the existing list of staging labels for the version.
%%
%% You can move the `AWSCURRENT' staging label to this version by
%% including it in this call.
%%
%% Whenever you move `AWSCURRENT', Secrets Manager automatically moves
%% the label `AWSPREVIOUS' to the version that `AWSCURRENT' was
%% removed from.
%%
%% If this action results in the last label being removed from a version,
%% then the version is considered to be 'deprecated' and can be
%% deleted by Secrets Manager.
%%
%% Secrets Manager generates a CloudTrail log entry when you call this
%% action. Do not include sensitive information in request parameters because
%% it might be logged. For more information, see Logging Secrets Manager
%% events with CloudTrail.
%%
%% Required permissions: `secretsmanager:UpdateSecretVersionStage'. For
%% more information, see IAM policy actions for Secrets Manager and
%% Authentication and access control in Secrets Manager.
update_secret_version_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_secret_version_stage(Client, Input, []).
update_secret_version_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecretVersionStage">>, Input, Options).

%% @doc Validates that a resource policy does not grant a wide range of
%% principals access to your secret.
%%
%% A resource-based policy is optional for secrets.
%%
%% The API performs three checks when validating the policy:
%%
%% <ul> <li> Sends a call to Zelkova, an automated reasoning engine, to
%% ensure your resource policy does not allow broad access to your secret,
%% for example policies that use a wildcard for the principal.
%%
%% </li> <li> Checks for correct syntax in a policy.
%%
%% </li> <li> Verifies the policy does not lock out a caller.
%%
%% </li> </ul> Secrets Manager generates a CloudTrail log entry when you call
%% this action. Do not include sensitive information in request parameters
%% because it might be logged. For more information, see Logging Secrets
%% Manager events with CloudTrail.
%%
%% Required permissions: `secretsmanager:ValidateResourcePolicy' and
%% `secretsmanager:PutResourcePolicy'. For more information, see IAM
%% policy actions for Secrets Manager and Authentication and access control
%% in Secrets Manager.
validate_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_resource_policy(Client, Input, []).
validate_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ValidateResourcePolicy">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"secretsmanager">>},
    Host = build_host(<<"secretsmanager">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"secretsmanager.", Action/binary>>}
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
