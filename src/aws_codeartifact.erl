%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS CodeArtifact is a fully managed artifact repository compatible
%% with language-native package managers and build tools such as npm, Apache
%% Maven, and pip. You can use CodeArtifact to share packages with
%% development teams and pull packages. Packages can be pulled from both
%% public and CodeArtifact repositories. You can also create an upstream
%% relationship between a CodeArtifact repository and another repository,
%% which effectively merges their contents from the point of view of a
%% package manager client.
%%
%% <b>AWS CodeArtifact Components</b>
%%
%% Use the information in this guide to help you work with the following
%% CodeArtifact components:
%%
%% <ul> <li> <b>Repository</b>: A CodeArtifact repository contains a set of
%% <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version">package
%% versions</a>, each of which maps to a set of assets, or files.
%% Repositories are polyglot, so a single repository can contain packages of
%% any supported type. Each repository exposes endpoints for fetching and
%% publishing packages using tools like the <b> <code>npm</code> </b> CLI,
%% the Maven CLI (<b> <code>mvn</code> </b>), and <b> <code>pip</code> </b>.
%% You can create up to 100 repositories per AWS account.
%%
%% </li> <li> <b>Domain</b>: Repositories are aggregated into a higher-level
%% entity known as a <i>domain</i>. All package assets and metadata are
%% stored in the domain, but are consumed through repositories. A given
%% package asset, such as a Maven JAR file, is stored once per domain, no
%% matter how many repositories it's present in. All of the assets and
%% metadata in a domain are encrypted with the same customer master key (CMK)
%% stored in AWS Key Management Service (AWS KMS).
%%
%% Each repository is a member of a single domain and can't be moved to a
%% different domain.
%%
%% The domain allows organizational policy to be applied across multiple
%% repositories, such as which accounts can access repositories in the
%% domain, and which public repositories can be used as sources of packages.
%%
%% Although an organization can have multiple domains, we recommend a single
%% production domain that contains all published artifacts so that teams can
%% find and share packages across their organization.
%%
%% </li> <li> <b>Package</b>: A <i>package</i> is a bundle of software and
%% the metadata required to resolve dependencies and install the software.
%% CodeArtifact supports <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-npm.html">npm</a>,
%% <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-python.html">PyPI</a>,
%% and <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-maven">Maven</a>
%% package formats.
%%
%% In CodeArtifact, a package consists of:
%%
%% <ul> <li> A <i>name</i> (for example, <code>webpack</code> is the name of
%% a popular npm package)
%%
%% </li> <li> An optional namespace (for example, <code>@types</code> in
%% <code>@types/node</code>)
%%
%% </li> <li> A set of versions (for example, <code>1.0.0</code>,
%% <code>1.0.1</code>, <code>1.0.2</code>, etc.)
%%
%% </li> <li> Package-level metadata (for example, npm tags)
%%
%% </li> </ul> </li> <li> <b>Package version</b>: A version of a package,
%% such as <code>@types/node 12.6.9</code>. The version number format and
%% semantics vary for different package formats. For example, npm package
%% versions must conform to the <a href="https://semver.org/">Semantic
%% Versioning specification</a>. In CodeArtifact, a package version consists
%% of the version identifier, metadata at the package version level, and a
%% set of assets.
%%
%% </li> <li> <b>Upstream repository</b>: One repository is <i>upstream</i>
%% of another when the package versions in it can be accessed from the
%% repository endpoint of the downstream repository, effectively merging the
%% contents of the two repositories from the point of view of a client.
%% CodeArtifact allows creating an upstream relationship between two
%% repositories.
%%
%% </li> <li> <b>Asset</b>: An individual file stored in CodeArtifact
%% associated with a package version, such as an npm <code>.tgz</code> file
%% or Maven POM and JAR files.
%%
%% </li> </ul> CodeArtifact supports these operations:
%%
%% <ul> <li> <code>AssociateExternalConnection</code>: Adds an existing
%% external connection to a repository.
%%
%% </li> <li> <code>CopyPackageVersions</code>: Copies package versions from
%% one repository to another repository in the same domain.
%%
%% </li> <li> <code>CreateDomain</code>: Creates a domain
%%
%% </li> <li> <code>CreateRepository</code>: Creates a CodeArtifact
%% repository in a domain.
%%
%% </li> <li> <code>DeleteDomain</code>: Deletes a domain. You cannot delete
%% a domain that contains repositories.
%%
%% </li> <li> <code>DeleteDomainPermissionsPolicy</code>: Deletes the
%% resource policy that is set on a domain.
%%
%% </li> <li> <code>DeletePackageVersions</code>: Deletes versions of a
%% package. After a package has been deleted, it can be republished, but its
%% assets and metadata cannot be restored because they have been permanently
%% removed from storage.
%%
%% </li> <li> <code>DeleteRepository</code>: Deletes a repository.
%%
%% </li> <li> <code>DeleteRepositoryPermissionsPolicy</code>: Deletes the
%% resource policy that is set on a repository.
%%
%% </li> <li> <code>DescribeDomain</code>: Returns a
%% <code>DomainDescription</code> object that contains information about the
%% requested domain.
%%
%% </li> <li> <code>DescribePackageVersion</code>: Returns a <code> <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">PackageVersionDescription</a>
%% </code> object that contains details about a package version.
%%
%% </li> <li> <code>DescribeRepository</code>: Returns a
%% <code>RepositoryDescription</code> object that contains detailed
%% information about the requested repository.
%%
%% </li> <li> <code>DisposePackageVersions</code>: Disposes versions of a
%% package. A package version with the status <code>Disposed</code> cannot be
%% restored because they have been permanently removed from storage.
%%
%% </li> <li> <code>DisassociateExternalConnection</code>: Removes an
%% existing external connection from a repository.
%%
%% </li> <li> <code>GetAuthorizationToken</code>: Generates a temporary
%% authorization token for accessing repositories in the domain. The token
%% expires the authorization period has passed. The default authorization
%% period is 12 hours and can be customized to any length with a maximum of
%% 12 hours.
%%
%% </li> <li> <code>GetDomainPermissionsPolicy</code>: Returns the policy of
%% a resource that is attached to the specified domain.
%%
%% </li> <li> <code>GetPackageVersionAsset</code>: Returns the contents of an
%% asset that is in a package version.
%%
%% </li> <li> <code>GetPackageVersionReadme</code>: Gets the readme file or
%% descriptive text for a package version.
%%
%% </li> <li> <code>GetRepositoryEndpoint</code>: Returns the endpoint of a
%% repository for a specific package format. A repository has one endpoint
%% for each package format:
%%
%% <ul> <li> <code>npm</code>
%%
%% </li> <li> <code>pypi</code>
%%
%% </li> <li> <code>maven</code>
%%
%% </li> </ul> </li> <li> <code>GetRepositoryPermissionsPolicy</code>:
%% Returns the resource policy that is set on a repository.
%%
%% </li> <li> <code>ListDomains</code>: Returns a list of
%% <code>DomainSummary</code> objects. Each returned
%% <code>DomainSummary</code> object contains information about a domain.
%%
%% </li> <li> <code>ListPackages</code>: Lists the packages in a repository.
%%
%% </li> <li> <code>ListPackageVersionAssets</code>: Lists the assets for a
%% given package version.
%%
%% </li> <li> <code>ListPackageVersionDependencies</code>: Returns a list of
%% the direct dependencies for a package version.
%%
%% </li> <li> <code>ListPackageVersions</code>: Returns a list of package
%% versions for a specified package in a repository.
%%
%% </li> <li> <code>ListRepositories</code>: Returns a list of repositories
%% owned by the AWS account that called this method.
%%
%% </li> <li> <code>ListRepositoriesInDomain</code>: Returns a list of the
%% repositories in a domain.
%%
%% </li> <li> <code>PutDomainPermissionsPolicy</code>: Attaches a resource
%% policy to a domain.
%%
%% </li> <li> <code>PutRepositoryPermissionsPolicy</code>: Sets the resource
%% policy on a repository that specifies permissions to access it.
%%
%% </li> <li> <code>UpdatePackageVersionsStatus</code>: Updates the status of
%% one or more versions of a package.
%%
%% </li> <li> <code>UpdateRepository</code>: Updates the properties of a
%% repository.
%%
%% </li> </ul>
-module(aws_codeartifact).

-export([associate_external_connection/2,
         associate_external_connection/3,
         copy_package_versions/2,
         copy_package_versions/3,
         create_domain/2,
         create_domain/3,
         create_repository/2,
         create_repository/3,
         delete_domain/2,
         delete_domain/3,
         delete_domain_permissions_policy/2,
         delete_domain_permissions_policy/3,
         delete_package_versions/2,
         delete_package_versions/3,
         delete_repository/2,
         delete_repository/3,
         delete_repository_permissions_policy/2,
         delete_repository_permissions_policy/3,
         describe_domain/3,
         describe_domain/4,
         describe_package_version/8,
         describe_package_version/9,
         describe_repository/4,
         describe_repository/5,
         disassociate_external_connection/2,
         disassociate_external_connection/3,
         dispose_package_versions/2,
         dispose_package_versions/3,
         get_authorization_token/2,
         get_authorization_token/3,
         get_domain_permissions_policy/3,
         get_domain_permissions_policy/4,
         get_package_version_asset/10,
         get_package_version_asset/11,
         get_package_version_readme/8,
         get_package_version_readme/9,
         get_repository_endpoint/5,
         get_repository_endpoint/6,
         get_repository_permissions_policy/4,
         get_repository_permissions_policy/5,
         list_domains/2,
         list_domains/3,
         list_package_version_assets/2,
         list_package_version_assets/3,
         list_package_version_dependencies/2,
         list_package_version_dependencies/3,
         list_package_versions/2,
         list_package_versions/3,
         list_packages/2,
         list_packages/3,
         list_repositories/2,
         list_repositories/3,
         list_repositories_in_domain/2,
         list_repositories_in_domain/3,
         put_domain_permissions_policy/2,
         put_domain_permissions_policy/3,
         put_repository_permissions_policy/2,
         put_repository_permissions_policy/3,
         update_package_versions_status/2,
         update_package_versions_status/3,
         update_repository/2,
         update_repository/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an existing external connection to a repository. One external
%% connection is allowed per repository.
%%
%% <note> A repository can have one or more upstream repositories, or an
%% external connection.
%%
%% </note>
associate_external_connection(Client, Input) ->
    associate_external_connection(Client, Input, []).
associate_external_connection(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/repository/external-connection"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"external-connection">>, <<"externalConnection">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Copies package versions from one repository to another repository in
%% the same domain.
%%
%% <note> You must specify <code>versions</code> or
%% <code>versionRevisions</code>. You cannot specify both.
%%
%% </note>
copy_package_versions(Client, Input) ->
    copy_package_versions(Client, Input, []).
copy_package_versions(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/package/versions/copy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"destination-repository">>, <<"destinationRepository">>},
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"source-repository">>, <<"sourceRepository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a domain. CodeArtifact <i>domains</i> make it easier to
%% manage multiple repositories across an organization. You can use a domain
%% to apply permissions across many repositories owned by different AWS
%% accounts. An asset is stored only once in a domain, even if it's in
%% multiple repositories.
%%
%% Although you can have multiple domains, we recommend a single production
%% domain that contains all published artifacts so that your development
%% teams can find and share packages. You can use a second pre-production
%% domain to test changes to the production domain configuration.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/domain"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a repository.
create_repository(Client, Input) ->
    create_repository(Client, Input, []).
create_repository(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/repository"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a domain. You cannot delete a domain that contains
%% repositories. If you want to delete a domain with repositories, first
%% delete its repositories.
delete_domain(Client, Input) ->
    delete_domain(Client, Input, []).
delete_domain(Client, Input0, Options) ->
    Method = delete,
    Path = ["/v1/domain"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the resource policy set on a domain.
delete_domain_permissions_policy(Client, Input) ->
    delete_domain_permissions_policy(Client, Input, []).
delete_domain_permissions_policy(Client, Input0, Options) ->
    Method = delete,
    Path = ["/v1/domain/permissions/policy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"policy-revision">>, <<"policyRevision">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes one or more versions of a package. A deleted package version
%% cannot be restored in your repository. If you want to remove a package
%% version from your repository and be able to restore it later, set its
%% status to <code>Archived</code>. Archived packages cannot be downloaded
%% from a repository and don't show up with list package APIs (for example,
%% <code> <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html">ListackageVersions</a>
%% </code>), but you can restore them using <code> <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html">UpdatePackageVersionsStatus</a>
%% </code>.
delete_package_versions(Client, Input) ->
    delete_package_versions(Client, Input, []).
delete_package_versions(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/package/versions/delete"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a repository.
delete_repository(Client, Input) ->
    delete_repository(Client, Input, []).
delete_repository(Client, Input0, Options) ->
    Method = delete,
    Path = ["/v1/repository"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the resource policy that is set on a repository. After a
%% resource policy is deleted, the permissions allowed and denied by the
%% deleted policy are removed. The effect of deleting a resource policy might
%% not be immediate.
%%
%% <important> Use <code>DeleteRepositoryPermissionsPolicy</code> with
%% caution. After a policy is deleted, AWS users, roles, and accounts lose
%% permissions to perform the repository actions granted by the deleted
%% policy.
%%
%% </important>
delete_repository_permissions_policy(Client, Input) ->
    delete_repository_permissions_policy(Client, Input, []).
delete_repository_permissions_policy(Client, Input0, Options) ->
    Method = delete,
    Path = ["/v1/repository/permissions/policies"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"policy-revision">>, <<"policyRevision">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html">
%% <code>DomainDescription</code> </a> object that contains information about
%% the requested domain.
describe_domain(Client, Domain, DomainOwner)
  when is_map(Client) ->
    describe_domain(Client, Domain, DomainOwner, []).
describe_domain(Client, Domain, DomainOwner, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/domain"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, DomainOwner}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">
%% <code>PackageVersionDescription</code> </a> object that contains
%% information about the requested package version.
describe_package_version(Client, Domain, DomainOwner, Format, Namespace, Package, PackageVersion, Repository)
  when is_map(Client) ->
    describe_package_version(Client, Domain, DomainOwner, Format, Namespace, Package, PackageVersion, Repository, []).
describe_package_version(Client, Domain, DomainOwner, Format, Namespace, Package, PackageVersion, Repository, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/package/version"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, DomainOwner},
        {<<"format">>, Format},
        {<<"namespace">>, Namespace},
        {<<"package">>, Package},
        {<<"version">>, PackageVersion},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a <code>RepositoryDescription</code> object that contains
%% detailed information about the requested repository.
describe_repository(Client, Domain, DomainOwner, Repository)
  when is_map(Client) ->
    describe_repository(Client, Domain, DomainOwner, Repository, []).
describe_repository(Client, Domain, DomainOwner, Repository, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/repository"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, DomainOwner},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes an existing external connection from a repository.
disassociate_external_connection(Client, Input) ->
    disassociate_external_connection(Client, Input, []).
disassociate_external_connection(Client, Input0, Options) ->
    Method = delete,
    Path = ["/v1/repository/external-connection"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"external-connection">>, <<"externalConnection">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the assets in package versions and sets the package versions'
%% status to <code>Disposed</code>. A disposed package version cannot be
%% restored in your repository because its assets are deleted.
%%
%% To view all disposed package versions in a repository, use <code> <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html">ListackageVersions</a>
%% </code> and set the <code> <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax">status</a>
%% </code> parameter to <code>Disposed</code>.
%%
%% To view information about a disposed package version, use <code> <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html">ListPackageVersions</a>
%% </code> and set the <code> <a
%% href="https://docs.aws.amazon.com/API_ListPackageVersions.html#codeartifact-ListPackageVersions-response-status">status</a>
%% </code> parameter to <code>Disposed</code>.
dispose_package_versions(Client, Input) ->
    dispose_package_versions(Client, Input, []).
dispose_package_versions(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/package/versions/dispose"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Generates a temporary authentication token for accessing repositories
%% in the domain. This API requires the
%% <code>codeartifact:GetAuthorizationToken</code> and
%% <code>sts:GetServiceBearerToken</code> permissions.
%%
%% <note> CodeArtifact authorization tokens are valid for a period of 12
%% hours when created with the <code>login</code> command. You can call
%% <code>login</code> periodically to refresh the token. When you create an
%% authorization token with the <code>GetAuthorizationToken</code> API, you
%% can set a custom authorization period, up to a maximum of 12 hours, with
%% the <code>durationSeconds</code> parameter.
%%
%% The authorization period begins after <code>login</code> or
%% <code>GetAuthorizationToken</code> is called. If <code>login</code> or
%% <code>GetAuthorizationToken</code> is called while assuming a role, the
%% token lifetime is independent of the maximum session duration of the role.
%% For example, if you call <code>sts assume-role</code> and specify a
%% session duration of 15 minutes, then generate a CodeArtifact authorization
%% token, the token will be valid for the full authorization period even
%% though this is longer than the 15-minute session duration.
%%
%% See <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using
%% IAM Roles</a> for more information on controlling session duration.
%%
%% </note>
get_authorization_token(Client, Input) ->
    get_authorization_token(Client, Input, []).
get_authorization_token(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/authorization-token"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"duration">>, <<"durationSeconds">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the resource policy attached to the specified domain.
%%
%% <note> The policy is a resource-based policy, not an identity-based
%% policy. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html">Identity-based
%% policies and resource-based policies </a> in the <i>AWS Identity and
%% Access Management User Guide</i>.
%%
%% </note>
get_domain_permissions_policy(Client, Domain, DomainOwner)
  when is_map(Client) ->
    get_domain_permissions_policy(Client, Domain, DomainOwner, []).
get_domain_permissions_policy(Client, Domain, DomainOwner, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/domain/permissions/policy"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, DomainOwner}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an asset (or file) that is in a package. For example, for a
%% Maven package version, use <code>GetPackageVersionAsset</code> to download
%% a <code>JAR</code> file, a <code>POM</code> file, or any other assets in
%% the package version.
get_package_version_asset(Client, Asset, Domain, DomainOwner, Format, Namespace, Package, PackageVersion, PackageVersionRevision, Repository)
  when is_map(Client) ->
    get_package_version_asset(Client, Asset, Domain, DomainOwner, Format, Namespace, Package, PackageVersion, PackageVersionRevision, Repository, []).
get_package_version_asset(Client, Asset, Domain, DomainOwner, Format, Namespace, Package, PackageVersion, PackageVersionRevision, Repository, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/package/version/asset"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"asset">>, Asset},
        {<<"domain">>, Domain},
        {<<"domain-owner">>, DomainOwner},
        {<<"format">>, Format},
        {<<"namespace">>, Namespace},
        {<<"package">>, Package},
        {<<"version">>, PackageVersion},
        {<<"revision">>, PackageVersionRevision},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"X-AssetName">>, <<"assetName">>},
            {<<"X-PackageVersion">>, <<"packageVersion">>},
            {<<"X-PackageVersionRevision">>, <<"packageVersionRevision">>}
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

%% @doc Gets the readme file or descriptive text for a package version. For
%% packages that do not contain a readme file, CodeArtifact extracts a
%% description from a metadata file. For example, from the
%% <code>&lt;description&gt;</code> element in the <code>pom.xml</code> file
%% of a Maven package.
%%
%% The returned text might contain formatting. For example, it might contain
%% formatting for Markdown or reStructuredText.
get_package_version_readme(Client, Domain, DomainOwner, Format, Namespace, Package, PackageVersion, Repository)
  when is_map(Client) ->
    get_package_version_readme(Client, Domain, DomainOwner, Format, Namespace, Package, PackageVersion, Repository, []).
get_package_version_readme(Client, Domain, DomainOwner, Format, Namespace, Package, PackageVersion, Repository, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/package/version/readme"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, DomainOwner},
        {<<"format">>, Format},
        {<<"namespace">>, Namespace},
        {<<"package">>, Package},
        {<<"version">>, PackageVersion},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the endpoint of a repository for a specific package format. A
%% repository has one endpoint for each package format:
%%
%% <ul> <li> <code>npm</code>
%%
%% </li> <li> <code>pypi</code>
%%
%% </li> <li> <code>maven</code>
%%
%% </li> </ul>
get_repository_endpoint(Client, Domain, DomainOwner, Format, Repository)
  when is_map(Client) ->
    get_repository_endpoint(Client, Domain, DomainOwner, Format, Repository, []).
get_repository_endpoint(Client, Domain, DomainOwner, Format, Repository, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/repository/endpoint"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, DomainOwner},
        {<<"format">>, Format},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the resource policy that is set on a repository.
get_repository_permissions_policy(Client, Domain, DomainOwner, Repository)
  when is_map(Client) ->
    get_repository_permissions_policy(Client, Domain, DomainOwner, Repository, []).
get_repository_permissions_policy(Client, Domain, DomainOwner, Repository, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/repository/permissions/policy"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, DomainOwner},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of <code> <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">DomainSummary</a>
%% </code> objects for all domains owned by the AWS account that makes this
%% call. Each returned <code>DomainSummary</code> object contains information
%% about a domain.
list_domains(Client, Input) ->
    list_domains(Client, Input, []).
list_domains(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/domains"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html">
%% <code>AssetSummary</code> </a> objects for assets in a package version.
list_package_version_assets(Client, Input) ->
    list_package_version_assets(Client, Input, []).
list_package_version_assets(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/package/version/assets"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"package">>, <<"package">>},
                     {<<"version">>, <<"packageVersion">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the direct dependencies for a package version. The
%% dependencies are returned as <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html">
%% <code>PackageDependency</code> </a> objects. CodeArtifact extracts the
%% dependencies for a package version from the metadata file for the package
%% format (for example, the <code>package.json</code> file for npm packages
%% and the <code>pom.xml</code> file for Maven). Any package version
%% dependencies that are not listed in the configuration file are not
%% returned.
list_package_version_dependencies(Client, Input) ->
    list_package_version_dependencies(Client, Input, []).
list_package_version_dependencies(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/package/version/dependencies"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"package">>, <<"package">>},
                     {<<"version">>, <<"packageVersion">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html">
%% <code>PackageVersionSummary</code> </a> objects for package versions in a
%% repository that match the request parameters.
list_package_versions(Client, Input) ->
    list_package_versions(Client, Input, []).
list_package_versions(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/package/versions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>},
                     {<<"sortBy">>, <<"sortBy">>},
                     {<<"status">>, <<"status">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html">
%% <code>PackageSummary</code> </a> objects for packages in a repository that
%% match the request parameters.
list_packages(Client, Input) ->
    list_packages(Client, Input, []).
list_packages(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/packages"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"package-prefix">>, <<"packagePrefix">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html">
%% <code>RepositorySummary</code> </a> objects. Each
%% <code>RepositorySummary</code> contains information about a repository in
%% the specified AWS account and that matches the input parameters.
list_repositories(Client, Input) ->
    list_repositories(Client, Input, []).
list_repositories(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/repositories"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"repository-prefix">>, <<"repositoryPrefix">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of <a
%% href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html">
%% <code>RepositorySummary</code> </a> objects. Each
%% <code>RepositorySummary</code> contains information about a repository in
%% the specified domain and that matches the input parameters.
list_repositories_in_domain(Client, Input) ->
    list_repositories_in_domain(Client, Input, []).
list_repositories_in_domain(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/domain/repositories"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"administrator-account">>, <<"administratorAccount">>},
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"repository-prefix">>, <<"repositoryPrefix">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets a resource policy on a domain that specifies permissions to
%% access it.
put_domain_permissions_policy(Client, Input) ->
    put_domain_permissions_policy(Client, Input, []).
put_domain_permissions_policy(Client, Input0, Options) ->
    Method = put,
    Path = ["/v1/domain/permissions/policy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the resource policy on a repository that specifies permissions
%% to access it.
put_repository_permissions_policy(Client, Input) ->
    put_repository_permissions_policy(Client, Input, []).
put_repository_permissions_policy(Client, Input0, Options) ->
    Method = put,
    Path = ["/v1/repository/permissions/policy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status of one or more versions of a package.
update_package_versions_status(Client, Input) ->
    update_package_versions_status(Client, Input, []).
update_package_versions_status(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/package/versions/update_status"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update the properties of a repository.
update_repository(Client, Input) ->
    update_repository(Client, Input, []).
update_repository(Client, Input0, Options) ->
    Method = put,
    Path = ["/v1/repository"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
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
    Client1 = Client#{service => <<"codeartifact">>},
    Host = build_host(<<"codeartifact">>, Client1),
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
