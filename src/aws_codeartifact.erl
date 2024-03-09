%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc CodeArtifact is a fully managed artifact repository compatible with
%% language-native
%% package managers and build tools such as npm, Apache Maven, pip, and
%% dotnet.
%%
%% You can use CodeArtifact to
%% share packages with development teams and pull packages. Packages can be
%% pulled from both
%% public and CodeArtifact repositories. You can also create an upstream
%% relationship between a CodeArtifact
%% repository and another repository, which effectively merges their contents
%% from the point of
%% view of a package manager client.
%%
%% CodeArtifact Components
%%
%% Use the information in this guide to help you work with the following
%% CodeArtifact components:
%%
%% Repository: A CodeArtifact repository contains a set of package
%% versions:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version,
%% each of which maps to a set of assets, or files. Repositories are
%% polyglot, so a single repository can contain packages of any supported
%% type. Each
%% repository exposes endpoints for fetching and publishing packages using
%% tools like the
%%
%% `npm'
%% CLI, the Maven CLI (
%% `mvn'
%% ), Python CLIs (
%% `pip'
%% and `twine'), and NuGet CLIs (`nuget' and `dotnet').
%%
%% Domain: Repositories are aggregated into a higher-level entity known as a
%% domain. All package assets and metadata are stored in the domain,
%% but are consumed through repositories. A given package asset, such as a
%% Maven JAR file, is
%% stored once per domain, no matter how many repositories it's present
%% in. All of the assets
%% and metadata in a domain are encrypted with the same customer master key
%% (CMK) stored in
%% Key Management Service (KMS).
%%
%% Each repository is a member of a single domain and can't be moved to a
%% different domain.
%%
%% The domain allows organizational policy to be applied across multiple
%% repositories, such as which accounts can access repositories in the
%% domain, and
%% which public repositories can be used as sources of packages.
%%
%% Although an organization can have multiple domains, we recommend a single
%% production
%% domain that contains all published artifacts so that teams can find and
%% share packages
%% across their organization.
%%
%% Package: A package is a bundle of software and the metadata required to
%% resolve dependencies and install the software. CodeArtifact supports npm:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/using-npm.html, PyPI:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/using-python.html,
%% Maven: https://docs.aws.amazon.com/codeartifact/latest/ug/using-maven, and
%% NuGet: https://docs.aws.amazon.com/codeartifact/latest/ug/using-nuget
%% package formats.
%%
%% In CodeArtifact, a package consists of:
%%
%% A name (for example, `webpack' is the name of a
%% popular npm package)
%%
%% An optional namespace (for example, `@types' in `@types/node')
%%
%% A set of versions (for example, `1.0.0', `1.0.1',
%% `1.0.2', etc.)
%%
%% Package-level metadata (for example, npm tags)
%%
%% Package version: A version of a package, such as `@types/node 12.6.9'.
%% The version number
%% format and semantics vary for different package formats. For example, npm
%% package versions
%% must conform to the Semantic Versioning
%% specification: https://semver.org/. In CodeArtifact, a package version
%% consists of the version identifier,
%% metadata at the package version level, and a set of assets.
%%
%% Upstream repository: One repository is upstream of another when the
%% package versions in
%% it can be accessed from the repository endpoint of the downstream
%% repository, effectively
%% merging the contents of the two repositories from the point of view of a
%% client. CodeArtifact
%% allows creating an upstream relationship between two repositories.
%%
%% Asset: An individual file stored in CodeArtifact associated with a package
%% version, such as an npm
%% `.tgz' file or Maven POM and JAR files.
%%
%% CodeArtifact supports these operations:
%%
%% `AssociateExternalConnection': Adds an existing external
%% connection to a repository.
%%
%% `CopyPackageVersions': Copies package versions from one
%% repository to another repository in the same domain.
%%
%% `CreateDomain': Creates a domain
%%
%% `CreateRepository': Creates a CodeArtifact repository in a domain.
%%
%% `DeleteDomain': Deletes a domain. You cannot delete a domain that
%% contains
%% repositories.
%%
%% `DeleteDomainPermissionsPolicy': Deletes the resource policy that is
%% set on a domain.
%%
%% `DeletePackage': Deletes a package and all associated package
%% versions.
%%
%% `DeletePackageVersions': Deletes versions of a package. After a
%% package has
%% been deleted, it can be republished, but its assets and metadata cannot be
%% restored
%% because they have been permanently removed from storage.
%%
%% `DeleteRepository': Deletes a repository.
%%
%% `DeleteRepositoryPermissionsPolicy': Deletes the resource policy that
%% is set on a repository.
%%
%% `DescribeDomain': Returns a `DomainDescription' object that
%% contains information about the requested domain.
%%
%% `DescribePackage': Returns a PackageDescription:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html
%% object that contains details about a package.
%%
%% `DescribePackageVersion': Returns a PackageVersionDescription:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html
%% object that contains details about a package version.
%%
%% `DescribeRepository': Returns a `RepositoryDescription' object
%% that contains detailed information about the requested repository.
%%
%% `DisposePackageVersions': Disposes versions of a package. A package
%% version
%% with the status `Disposed' cannot be restored because they have been
%% permanently removed from storage.
%%
%% `DisassociateExternalConnection': Removes an existing external
%% connection from a repository.
%%
%% `GetAuthorizationToken': Generates a temporary authorization token for
%% accessing repositories in the domain. The token expires the authorization
%% period has passed.
%% The default authorization period is 12 hours and can be customized to any
%% length with a maximum of 12 hours.
%%
%% `GetDomainPermissionsPolicy': Returns the policy of a resource
%% that is attached to the specified domain.
%%
%% `GetPackageVersionAsset': Returns the contents of an asset that is in
%% a package version.
%%
%% `GetPackageVersionReadme': Gets the readme file or descriptive text
%% for a package version.
%%
%% `GetRepositoryEndpoint': Returns the endpoint of a repository for a
%% specific package format. A repository has one endpoint for each
%% package format:
%%
%% `maven'
%%
%% `npm'
%%
%% `nuget'
%%
%% `pypi'
%%
%% `GetRepositoryPermissionsPolicy': Returns the resource policy that is
%% set on a repository.
%%
%% `ListDomains': Returns a list of `DomainSummary' objects. Each
%% returned `DomainSummary' object contains information about a domain.
%%
%% `ListPackages': Lists the packages in a repository.
%%
%% `ListPackageVersionAssets': Lists the assets for a given package
%% version.
%%
%% `ListPackageVersionDependencies': Returns a list of the direct
%% dependencies for a
%% package version.
%%
%% `ListPackageVersions': Returns a list of package versions for a
%% specified
%% package in a repository.
%%
%% `ListRepositories': Returns a list of repositories owned by the Amazon
%% Web Services account that called this method.
%%
%% `ListRepositoriesInDomain': Returns a list of the repositories in a
%% domain.
%%
%% `PublishPackageVersion': Creates a new package version containing one
%% or more assets.
%%
%% `PutDomainPermissionsPolicy': Attaches a resource policy to a domain.
%%
%% `PutPackageOriginConfiguration': Sets the package origin configuration
%% for a package, which determine
%% how new versions of the package can be added to a specific repository.
%%
%% `PutRepositoryPermissionsPolicy': Sets the resource policy on a
%% repository
%% that specifies permissions to access it.
%%
%% `UpdatePackageVersionsStatus': Updates the status of one or more
%% versions of a package.
%%
%% `UpdateRepository': Updates the properties of a repository.
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
         delete_package/2,
         delete_package/3,
         delete_package_versions/2,
         delete_package_versions/3,
         delete_repository/2,
         delete_repository/3,
         delete_repository_permissions_policy/2,
         delete_repository_permissions_policy/3,
         describe_domain/2,
         describe_domain/4,
         describe_domain/5,
         describe_package/5,
         describe_package/7,
         describe_package/8,
         describe_package_version/6,
         describe_package_version/8,
         describe_package_version/9,
         describe_repository/3,
         describe_repository/5,
         describe_repository/6,
         disassociate_external_connection/2,
         disassociate_external_connection/3,
         dispose_package_versions/2,
         dispose_package_versions/3,
         get_authorization_token/2,
         get_authorization_token/3,
         get_domain_permissions_policy/2,
         get_domain_permissions_policy/4,
         get_domain_permissions_policy/5,
         get_package_version_asset/7,
         get_package_version_asset/9,
         get_package_version_asset/10,
         get_package_version_readme/6,
         get_package_version_readme/8,
         get_package_version_readme/9,
         get_repository_endpoint/4,
         get_repository_endpoint/6,
         get_repository_endpoint/7,
         get_repository_permissions_policy/3,
         get_repository_permissions_policy/5,
         get_repository_permissions_policy/6,
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
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         publish_package_version/2,
         publish_package_version/3,
         put_domain_permissions_policy/2,
         put_domain_permissions_policy/3,
         put_package_origin_configuration/2,
         put_package_origin_configuration/3,
         put_repository_permissions_policy/2,
         put_repository_permissions_policy/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_package_versions_status/2,
         update_package_versions_status/3,
         update_repository/2,
         update_repository/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an existing external connection to a repository.
%%
%% One external connection is allowed
%% per repository.
%%
%% A repository can have one or more upstream repositories, or an external
%% connection.
associate_external_connection(Client, Input) ->
    associate_external_connection(Client, Input, []).
associate_external_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/repository/external-connection"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"external-connection">>, <<"externalConnection">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Copies package versions from one repository to another repository in the
%% same domain.
%%
%% You must specify `versions' or `versionRevisions'. You cannot
%% specify both.
copy_package_versions(Client, Input) ->
    copy_package_versions(Client, Input, []).
copy_package_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package/versions/copy"],
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
                     {<<"destination-repository">>, <<"destinationRepository">>},
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"source-repository">>, <<"sourceRepository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Creates a domain.
%%
%% CodeArtifact domains make it easier to manage multiple repositories across
%% an
%% organization. You can use a domain to apply permissions across many
%% repositories owned by different Amazon Web Services accounts. An asset is
%% stored only once
%% in a domain, even if it's in multiple repositories.
%%
%% Although you can have multiple domains, we recommend a single production
%% domain that contains all
%% published artifacts so that your development teams can find and share
%% packages. You can use a second
%% pre-production domain to test changes to the production domain
%% configuration.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/domain"],
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
                     {<<"domain">>, <<"domain">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Creates a repository.
create_repository(Client, Input) ->
    create_repository(Client, Input, []).
create_repository(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/repository"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes a domain.
%%
%% You cannot delete a domain that contains repositories. If you want to
%% delete a domain
%% with repositories, first delete its repositories.
delete_domain(Client, Input) ->
    delete_domain(Client, Input, []).
delete_domain(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/domain"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes the resource policy set on a domain.
delete_domain_permissions_policy(Client, Input) ->
    delete_domain_permissions_policy(Client, Input, []).
delete_domain_permissions_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/domain/permissions/policy"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"policy-revision">>, <<"policyRevision">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a package and all associated package versions.
%%
%% A deleted package cannot be restored. To delete one or more package
%% versions, use the
%% DeletePackageVersions:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DeletePackageVersions.html
%% API.
delete_package(Client, Input) ->
    delete_package(Client, Input, []).
delete_package(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/package"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes one or more versions of a package.
%%
%% A deleted package version cannot be restored
%% in your repository. If you want to remove a package version from your
%% repository and be able
%% to restore it later, set its status to `Archived'. Archived packages
%% cannot be
%% downloaded from a repository and don't show up with list package APIs
%% (for example,
%% ListPackageVersions:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html),
%% but you can restore them using UpdatePackageVersionsStatus:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html.
delete_package_versions(Client, Input) ->
    delete_package_versions(Client, Input, []).
delete_package_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package/versions/delete"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes a repository.
delete_repository(Client, Input) ->
    delete_repository(Client, Input, []).
delete_repository(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/repository"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes the resource policy that is set on a repository.
%%
%% After a resource policy is deleted, the
%% permissions allowed and denied by the deleted policy are removed. The
%% effect of deleting a resource policy might not be immediate.
%%
%% Use `DeleteRepositoryPermissionsPolicy' with caution. After a policy
%% is deleted, Amazon Web Services users, roles, and accounts lose
%% permissions to perform
%% the repository actions granted by the deleted policy.
delete_repository_permissions_policy(Client, Input) ->
    delete_repository_permissions_policy(Client, Input, []).
delete_repository_permissions_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/repository/permissions/policies"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"policy-revision">>, <<"policyRevision">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Returns a
%% DomainDescription:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html
%% object that contains information about the requested domain.
describe_domain(Client, Domain)
  when is_map(Client) ->
    describe_domain(Client, Domain, #{}, #{}).

describe_domain(Client, Domain, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain(Client, Domain, QueryMap, HeadersMap, []).

describe_domain(Client, Domain, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/domain"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, maps:get(<<"domain-owner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a
%% PackageDescription:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html
%% object that contains information about the requested package.
describe_package(Client, Domain, Format, Package, Repository)
  when is_map(Client) ->
    describe_package(Client, Domain, Format, Package, Repository, #{}, #{}).

describe_package(Client, Domain, Format, Package, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package(Client, Domain, Format, Package, Repository, QueryMap, HeadersMap, []).

describe_package(Client, Domain, Format, Package, Repository, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/package"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, maps:get(<<"domain-owner">>, QueryMap, undefined)},
        {<<"format">>, Format},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"package">>, Package},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns a
%% PackageVersionDescription:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html
%% object that contains information about the requested package version.
describe_package_version(Client, Domain, Format, Package, PackageVersion, Repository)
  when is_map(Client) ->
    describe_package_version(Client, Domain, Format, Package, PackageVersion, Repository, #{}, #{}).

describe_package_version(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package_version(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap, []).

describe_package_version(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/package/version"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, maps:get(<<"domain-owner">>, QueryMap, undefined)},
        {<<"format">>, Format},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"package">>, Package},
        {<<"version">>, PackageVersion},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns a `RepositoryDescription' object that contains detailed
%% information
%% about the requested repository.
describe_repository(Client, Domain, Repository)
  when is_map(Client) ->
    describe_repository(Client, Domain, Repository, #{}, #{}).

describe_repository(Client, Domain, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_repository(Client, Domain, Repository, QueryMap, HeadersMap, []).

describe_repository(Client, Domain, Repository, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/repository"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, maps:get(<<"domain-owner">>, QueryMap, undefined)},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Removes an existing external connection from a repository.
disassociate_external_connection(Client, Input) ->
    disassociate_external_connection(Client, Input, []).
disassociate_external_connection(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/repository/external-connection"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"external-connection">>, <<"externalConnection">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes the assets in package versions and sets the package versions'
%% status to `Disposed'.
%%
%% A disposed package version cannot be restored in your repository because
%% its assets are deleted.
%%
%% To view all disposed package versions in a repository, use
%% ListPackageVersions:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html
%% and set the
%% status:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax
%% parameter
%% to `Disposed'.
%%
%% To view information about a disposed package version, use
%% DescribePackageVersion:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DescribePackageVersion.html.
dispose_package_versions(Client, Input) ->
    dispose_package_versions(Client, Input, []).
dispose_package_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package/versions/dispose"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Generates a temporary authorization token for accessing repositories in
%% the domain.
%%
%% This API requires the `codeartifact:GetAuthorizationToken' and
%% `sts:GetServiceBearerToken' permissions.
%% For more information about authorization tokens, see
%% CodeArtifact authentication and tokens:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html.
%%
%% CodeArtifact authorization tokens are valid for a period of 12 hours when
%% created with the `login' command.
%% You can call `login' periodically to refresh the token. When
%% you create an authorization token with the `GetAuthorizationToken'
%% API, you can set a custom authorization period,
%% up to a maximum of 12 hours, with the `durationSeconds' parameter.
%%
%% The authorization period begins after `login'
%% or `GetAuthorizationToken' is called. If `login' or
%% `GetAuthorizationToken' is called while
%% assuming a role, the token lifetime is independent of the maximum session
%% duration
%% of the role. For example, if you call `sts assume-role' and specify a
%% session duration of 15 minutes, then
%% generate a CodeArtifact authorization token, the token will be valid for
%% the full authorization period
%% even though this is longer than the 15-minute session duration.
%%
%% See
%% Using IAM Roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html
%% for more information on controlling session duration.
get_authorization_token(Client, Input) ->
    get_authorization_token(Client, Input, []).
get_authorization_token(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/authorization-token"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"duration">>, <<"durationSeconds">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Returns the resource policy attached to the specified domain.
%%
%% The policy is a resource-based policy, not an identity-based policy. For
%% more information, see
%% Identity-based policies
%% and resource-based policies :
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html
%% in the IAM User Guide.
get_domain_permissions_policy(Client, Domain)
  when is_map(Client) ->
    get_domain_permissions_policy(Client, Domain, #{}, #{}).

get_domain_permissions_policy(Client, Domain, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_permissions_policy(Client, Domain, QueryMap, HeadersMap, []).

get_domain_permissions_policy(Client, Domain, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/domain/permissions/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, maps:get(<<"domain-owner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns an asset (or file) that is in a package.
%%
%% For example, for a Maven package version, use
%% `GetPackageVersionAsset' to download a `JAR' file, a `POM'
%% file,
%% or any other assets in the package version.
get_package_version_asset(Client, Asset, Domain, Format, Package, PackageVersion, Repository)
  when is_map(Client) ->
    get_package_version_asset(Client, Asset, Domain, Format, Package, PackageVersion, Repository, #{}, #{}).

get_package_version_asset(Client, Asset, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package_version_asset(Client, Asset, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap, []).

get_package_version_asset(Client, Asset, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/package/version/asset"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"asset">>, Asset},
        {<<"domain">>, Domain},
        {<<"domain-owner">>, maps:get(<<"domain-owner">>, QueryMap, undefined)},
        {<<"format">>, Format},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"package">>, Package},
        {<<"version">>, PackageVersion},
        {<<"revision">>, maps:get(<<"revision">>, QueryMap, undefined)},
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

%% @doc
%% Gets the readme file or descriptive text for a package version.
%%
%% The returned text might contain formatting. For example, it might contain
%% formatting for Markdown or reStructuredText.
get_package_version_readme(Client, Domain, Format, Package, PackageVersion, Repository)
  when is_map(Client) ->
    get_package_version_readme(Client, Domain, Format, Package, PackageVersion, Repository, #{}, #{}).

get_package_version_readme(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package_version_readme(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap, []).

get_package_version_readme(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/package/version/readme"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, maps:get(<<"domain-owner">>, QueryMap, undefined)},
        {<<"format">>, Format},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"package">>, Package},
        {<<"version">>, PackageVersion},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns the endpoint of a repository for a specific package format.
%%
%% A repository has one endpoint for each
%% package format:
%%
%% `maven'
%%
%% `npm'
%%
%% `nuget'
%%
%% `pypi'
get_repository_endpoint(Client, Domain, Format, Repository)
  when is_map(Client) ->
    get_repository_endpoint(Client, Domain, Format, Repository, #{}, #{}).

get_repository_endpoint(Client, Domain, Format, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_repository_endpoint(Client, Domain, Format, Repository, QueryMap, HeadersMap, []).

get_repository_endpoint(Client, Domain, Format, Repository, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/repository/endpoint"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, maps:get(<<"domain-owner">>, QueryMap, undefined)},
        {<<"format">>, Format},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns the resource policy that is set on a repository.
get_repository_permissions_policy(Client, Domain, Repository)
  when is_map(Client) ->
    get_repository_permissions_policy(Client, Domain, Repository, #{}, #{}).

get_repository_permissions_policy(Client, Domain, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_repository_permissions_policy(Client, Domain, Repository, QueryMap, HeadersMap, []).

get_repository_permissions_policy(Client, Domain, Repository, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/repository/permissions/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, Domain},
        {<<"domain-owner">>, maps:get(<<"domain-owner">>, QueryMap, undefined)},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of DomainSummary:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html
%% objects for all domains owned by the Amazon Web Services account that
%% makes
%% this call.
%%
%% Each returned `DomainSummary' object contains information about a
%% domain.
list_domains(Client, Input) ->
    list_domains(Client, Input, []).
list_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/domains"],
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
%% Returns a list of
%% AssetSummary:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html
%% objects for assets in a package version.
list_package_version_assets(Client, Input) ->
    list_package_version_assets(Client, Input, []).
list_package_version_assets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package/version/assets"],
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
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Returns the direct dependencies for a package version.
%%
%% The dependencies are returned as
%% PackageDependency:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html
%% objects. CodeArtifact extracts the dependencies for a package version from
%% the metadata file for the package
%% format (for example, the `package.json' file for npm packages and the
%% `pom.xml' file
%% for Maven). Any package version dependencies that are not listed in the
%% configuration file are not returned.
list_package_version_dependencies(Client, Input) ->
    list_package_version_dependencies(Client, Input, []).
list_package_version_dependencies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package/version/dependencies"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"package">>, <<"package">>},
                     {<<"version">>, <<"packageVersion">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Returns a list of
%% PackageVersionSummary:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html
%% objects for package versions in a repository that match the request
%% parameters.
%%
%% Package versions of all statuses will be returned by default when calling
%% `list-package-versions' with no `--status' parameter.
list_package_versions(Client, Input) ->
    list_package_versions(Client, Input, []).
list_package_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package/versions"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"originType">>, <<"originType">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>},
                     {<<"sortBy">>, <<"sortBy">>},
                     {<<"status">>, <<"status">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Returns a list of
%% PackageSummary:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html
%% objects for packages in a repository that match the request parameters.
list_packages(Client, Input) ->
    list_packages(Client, Input, []).
list_packages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/packages"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"package-prefix">>, <<"packagePrefix">>},
                     {<<"publish">>, <<"publish">>},
                     {<<"repository">>, <<"repository">>},
                     {<<"upstream">>, <<"upstream">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Returns a list of
%% RepositorySummary:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html
%% objects.
%%
%% Each `RepositorySummary' contains information about a repository in
%% the specified Amazon Web Services account and that matches the input
%% parameters.
list_repositories(Client, Input) ->
    list_repositories(Client, Input, []).
list_repositories(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/repositories"],
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
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"repository-prefix">>, <<"repositoryPrefix">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Returns a list of
%% RepositorySummary:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html
%% objects.
%%
%% Each `RepositorySummary' contains information about a repository in
%% the specified domain and that matches the input
%% parameters.
list_repositories_in_domain(Client, Input) ->
    list_repositories_in_domain(Client, Input, []).
list_repositories_in_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/domain/repositories"],
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
                     {<<"administrator-account">>, <<"administratorAccount">>},
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"repository-prefix">>, <<"repositoryPrefix">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about Amazon Web Services tags for a specified
%% Amazon Resource Name (ARN) in CodeArtifact.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags"],
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
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new package version containing one or more assets (or
%% files).
%%
%% The `unfinished' flag can be used to keep the package version in the
%% `Unfinished' state until all of its assets have been uploaded (see
%% Package version status:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status
%% in the CodeArtifact user guide). To set
%% the package version’s status to `Published', omit the `unfinished'
%% flag
%% when uploading the final asset, or set the status using
%% UpdatePackageVersionStatus:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html.
%% Once a package version’s status is set to
%% `Published', it cannot change back to `Unfinished'.
%%
%% Only generic packages can be published using this API. For more
%% information, see Using generic
%% packages:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html in
%% the CodeArtifact User Guide.
publish_package_version(Client, Input) ->
    publish_package_version(Client, Input, []).
publish_package_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package/version/publish"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-content-sha256">>, <<"assetSHA256">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"asset">>, <<"assetName">>},
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"version">>, <<"packageVersion">>},
                     {<<"repository">>, <<"repository">>},
                     {<<"unfinished">>, <<"unfinished">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Sets a resource policy on a domain that specifies permissions to access
%% it.
%%
%% When you call `PutDomainPermissionsPolicy', the resource policy on the
%% domain is ignored when evaluting permissions.
%% This ensures that the owner of a domain cannot lock themselves out of the
%% domain, which would prevent them from being
%% able to update the resource policy.
put_domain_permissions_policy(Client, Input) ->
    put_domain_permissions_policy(Client, Input, []).
put_domain_permissions_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/domain/permissions/policy"],
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

%% @doc Sets the package origin configuration for a package.
%%
%% The package origin configuration determines how new versions of a package
%% can be added to a repository. You can allow or block direct
%% publishing of new package versions, or ingestion and retaining of new
%% package versions from an external connection or upstream source.
%% For more information about package origin controls and configuration, see
%% Editing package origin controls:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/package-origin-controls.html
%% in the CodeArtifact User Guide.
%%
%% `PutPackageOriginConfiguration' can be called on a package that
%% doesn't yet exist in the repository. When called
%% on a package that does not exist, a package is created in the repository
%% with no versions and the requested restrictions are set on the package.
%% This can be used to preemptively block ingesting or retaining any versions
%% from external connections or upstream repositories, or to block
%% publishing any versions of the package into the repository before
%% connecting any package managers or publishers to the repository.
put_package_origin_configuration(Client, Input) ->
    put_package_origin_configuration(Client, Input, []).
put_package_origin_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Sets the resource policy on a repository that specifies permissions to
%% access it.
%%
%% When you call `PutRepositoryPermissionsPolicy', the resource policy on
%% the repository is ignored when evaluting permissions.
%% This ensures that the owner of a repository cannot lock themselves out of
%% the repository, which would prevent them from being
%% able to update the resource policy.
put_repository_permissions_policy(Client, Input) ->
    put_repository_permissions_policy(Client, Input, []).
put_repository_permissions_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/repository/permissions/policy"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates tags for a resource in CodeArtifact.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tag"],
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
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a resource in CodeArtifact.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/untag"],
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
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Updates the status of one or more versions of a package.
%%
%% Using `UpdatePackageVersionsStatus',
%% you can update the status of package versions to `Archived',
%% `Published', or `Unlisted'.
%% To set the status of a package version to `Disposed', use
%% DisposePackageVersions:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DisposePackageVersions.html.
update_package_versions_status(Client, Input) ->
    update_package_versions_status(Client, Input, []).
update_package_versions_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package/versions/update_status"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"format">>, <<"format">>},
                     {<<"namespace">>, <<"namespace">>},
                     {<<"package">>, <<"package">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Update the properties of a repository.
update_repository(Client, Input) ->
    update_repository(Client, Input, []).
update_repository(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/repository"],
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
                     {<<"domain">>, <<"domain">>},
                     {<<"domain-owner">>, <<"domainOwner">>},
                     {<<"repository">>, <<"repository">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"codeartifact">>},
    Host = build_host(<<"codeartifact">>, Client1),
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
