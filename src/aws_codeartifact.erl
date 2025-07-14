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
%% CodeArtifact concepts
%%
%% Repository: A CodeArtifact repository contains a set of package
%% versions:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version,
%% each of which maps to a set of assets, or files. Repositories are
%% polyglot, so a single repository can contain packages of any supported
%% type. Each
%% repository exposes endpoints for fetching and publishing packages using
%% tools such as the
%% `npm'
%% CLI or the Maven CLI (
%% `mvn'
%% ). For a list of supported package managers, see the
%% CodeArtifact User Guide:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html.
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
%% resolve dependencies and install the software. CodeArtifact supports npm,
%% PyPI, Maven, NuGet, Swift, Ruby, Cargo, and generic package formats.
%% For more information about the supported package formats and how to use
%% CodeArtifact with them, see the
%% CodeArtifact User Guide:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html.
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
%% Package group: A group of packages that match a specified definition.
%% Package
%% groups can be used to apply configuration to multiple packages that match
%% a defined pattern using
%% package format, package namespace, and package name. You can use package
%% groups to more conveniently
%% configure package origin controls for multiple packages. Package origin
%% controls are used to block or allow ingestion or publishing
%% of new package versions, which protects users from malicious actions known
%% as dependency substitution attacks.
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
%% CodeArtifact supported API operations
%%
%% `AssociateExternalConnection': Adds an existing external
%% connection to a repository.
%%
%% `CopyPackageVersions': Copies package versions from one
%% repository to another repository in the same domain.
%%
%% `CreateDomain': Creates a domain.
%%
%% `CreatePackageGroup': Creates a package group.
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
%% `DeletePackageGroup': Deletes a package group. Does not delete
%% packages or package versions that are associated with a package group.
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
%% `DescribePackageGroup': Returns a PackageGroup:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroup.html
%% object that contains details about a package group.
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
%% `GetAssociatedPackageGroup': Returns the most closely associated
%% package group to the specified package.
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
%% `cargo'
%%
%% `generic'
%%
%% `maven'
%%
%% `npm'
%%
%% `nuget'
%%
%% `pypi'
%%
%% `ruby'
%%
%% `swift'
%%
%% `GetRepositoryPermissionsPolicy': Returns the resource policy that is
%% set on a repository.
%%
%% `ListAllowedRepositoriesForGroup': Lists the allowed repositories for
%% a package group that has origin configuration set to
%% `ALLOW_SPECIFIC_REPOSITORIES'.
%%
%% `ListAssociatedPackages': Returns a list of packages associated with
%% the requested package group.
%%
%% `ListDomains': Returns a list of `DomainSummary' objects. Each
%% returned `DomainSummary' object contains information about a domain.
%%
%% `ListPackages': Lists the packages in a repository.
%%
%% `ListPackageGroups': Returns a list of package groups in the requested
%% domain.
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
%% `ListSubPackageGroups': Returns a list of direct children of the
%% specified package group.
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
%% `UpdatePackageGroup': Updates a package group. This API cannot be used
%% to update a package group's origin configuration or pattern.
%%
%% `UpdatePackageGroupOriginConfiguration': Updates the package origin
%% configuration for a package group.
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
         create_package_group/2,
         create_package_group/3,
         create_repository/2,
         create_repository/3,
         delete_domain/2,
         delete_domain/3,
         delete_domain_permissions_policy/2,
         delete_domain_permissions_policy/3,
         delete_package/2,
         delete_package/3,
         delete_package_group/2,
         delete_package_group/3,
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
         describe_package_group/3,
         describe_package_group/5,
         describe_package_group/6,
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
         get_associated_package_group/4,
         get_associated_package_group/6,
         get_associated_package_group/7,
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
         list_allowed_repositories_for_group/4,
         list_allowed_repositories_for_group/6,
         list_allowed_repositories_for_group/7,
         list_associated_packages/3,
         list_associated_packages/5,
         list_associated_packages/6,
         list_domains/2,
         list_domains/3,
         list_package_groups/2,
         list_package_groups/3,
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
         list_sub_package_groups/2,
         list_sub_package_groups/3,
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
         update_package_group/2,
         update_package_group/3,
         update_package_group_origin_configuration/2,
         update_package_group_origin_configuration/3,
         update_package_versions_status/2,
         update_package_versions_status/3,
         update_repository/2,
         update_repository/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% describe_package_group_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"packageGroup">> := string()
%% }
-type describe_package_group_request() :: #{binary() => any()}.


%% Example:
%% update_package_group_result() :: #{
%%   <<"packageGroup">> => package_group_description()
%% }
-type update_package_group_result() :: #{binary() => any()}.


%% Example:
%% list_package_version_assets_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"namespace">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"package">> := string(),
%%   <<"packageVersion">> := string(),
%%   <<"repository">> := string()
%% }
-type list_package_version_assets_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_package_groups_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"packageGroups">> => list(package_group_summary())
%% }
-type list_package_groups_result() :: #{binary() => any()}.


%% Example:
%% update_package_versions_status_result() :: #{
%%   <<"failedVersions">> => map(),
%%   <<"successfulVersions">> => map()
%% }
-type update_package_versions_status_result() :: #{binary() => any()}.


%% Example:
%% list_package_version_assets_result() :: #{
%%   <<"assets">> => list(asset_summary()),
%%   <<"format">> => list(any()),
%%   <<"namespace">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"package">> => string(),
%%   <<"version">> => string(),
%%   <<"versionRevision">> => string()
%% }
-type list_package_version_assets_result() :: #{binary() => any()}.


%% Example:
%% create_package_group_request() :: #{
%%   <<"contactInfo">> => string(),
%%   <<"description">> => string(),
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"packageGroup">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_package_group_request() :: #{binary() => any()}.


%% Example:
%% list_package_version_dependencies_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"package">> := string(),
%%   <<"packageVersion">> := string(),
%%   <<"repository">> := string()
%% }
-type list_package_version_dependencies_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_result() :: #{}
-type untag_resource_result() :: #{}.


%% Example:
%% dispose_package_versions_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"expectedStatus">> => list(any()),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"repository">> := string(),
%%   <<"versionRevisions">> => map(),
%%   <<"versions">> := list(string())
%% }
-type dispose_package_versions_request() :: #{binary() => any()}.


%% Example:
%% package_origin_configuration() :: #{
%%   <<"restrictions">> => package_origin_restrictions()
%% }
-type package_origin_configuration() :: #{binary() => any()}.


%% Example:
%% describe_repository_result() :: #{
%%   <<"repository">> => repository_description()
%% }
-type describe_repository_result() :: #{binary() => any()}.


%% Example:
%% list_allowed_repositories_for_group_result() :: #{
%%   <<"allowedRepositories">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_allowed_repositories_for_group_result() :: #{binary() => any()}.


%% Example:
%% package_version_origin() :: #{
%%   <<"domainEntryPoint">> => domain_entry_point(),
%%   <<"originType">> => list(any())
%% }
-type package_version_origin() :: #{binary() => any()}.


%% Example:
%% domain_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"encryptionKey">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"status">> => list(any())
%% }
-type domain_summary() :: #{binary() => any()}.


%% Example:
%% list_packages_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"namespace">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"packagePrefix">> => string(),
%%   <<"publish">> => list(any()),
%%   <<"repository">> := string(),
%%   <<"upstream">> => list(any())
%% }
-type list_packages_request() :: #{binary() => any()}.


%% Example:
%% delete_repository_result() :: #{
%%   <<"repository">> => repository_description()
%% }
-type delete_repository_result() :: #{binary() => any()}.


%% Example:
%% delete_package_group_result() :: #{
%%   <<"packageGroup">> => package_group_description()
%% }
-type delete_package_group_result() :: #{binary() => any()}.


%% Example:
%% get_package_version_asset_result() :: #{
%%   <<"asset">> => binary(),
%%   <<"assetName">> => string(),
%%   <<"packageVersion">> => string(),
%%   <<"packageVersionRevision">> => string()
%% }
-type get_package_version_asset_result() :: #{binary() => any()}.


%% Example:
%% publish_package_version_result() :: #{
%%   <<"asset">> => asset_summary(),
%%   <<"format">> => list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> => string(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string(),
%%   <<"versionRevision">> => string()
%% }
-type publish_package_version_result() :: #{binary() => any()}.


%% Example:
%% create_domain_result() :: #{
%%   <<"domain">> => domain_description()
%% }
-type create_domain_result() :: #{binary() => any()}.


%% Example:
%% asset_summary() :: #{
%%   <<"hashes">> => map(),
%%   <<"name">> => string(),
%%   <<"size">> => float()
%% }
-type asset_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_package_group_request() :: #{
%%   <<"contactInfo">> => string(),
%%   <<"description">> => string(),
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"packageGroup">> := string()
%% }
-type update_package_group_request() :: #{binary() => any()}.


%% Example:
%% get_associated_package_group_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string()
%% }
-type get_associated_package_group_request() :: #{binary() => any()}.


%% Example:
%% list_allowed_repositories_for_group_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"originRestrictionType">> := list(any()),
%%   <<"packageGroup">> := string()
%% }
-type list_allowed_repositories_for_group_request() :: #{binary() => any()}.


%% Example:
%% put_repository_permissions_policy_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"policyDocument">> := string(),
%%   <<"policyRevision">> => string(),
%%   <<"repository">> := string()
%% }
-type put_repository_permissions_policy_request() :: #{binary() => any()}.


%% Example:
%% package_group_reference() :: #{
%%   <<"arn">> => string(),
%%   <<"pattern">> => string()
%% }
-type package_group_reference() :: #{binary() => any()}.


%% Example:
%% package_version_description() :: #{
%%   <<"displayName">> => string(),
%%   <<"format">> => list(any()),
%%   <<"homePage">> => string(),
%%   <<"licenses">> => list(license_info()),
%%   <<"namespace">> => string(),
%%   <<"origin">> => package_version_origin(),
%%   <<"packageName">> => string(),
%%   <<"publishedTime">> => non_neg_integer(),
%%   <<"revision">> => string(),
%%   <<"sourceCodeRepository">> => string(),
%%   <<"status">> => list(any()),
%%   <<"summary">> => string(),
%%   <<"version">> => string()
%% }
-type package_version_description() :: #{binary() => any()}.


%% Example:
%% get_package_version_readme_result() :: #{
%%   <<"format">> => list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> => string(),
%%   <<"readme">> => string(),
%%   <<"version">> => string(),
%%   <<"versionRevision">> => string()
%% }
-type get_package_version_readme_result() :: #{binary() => any()}.


%% Example:
%% list_package_version_dependencies_result() :: #{
%%   <<"dependencies">> => list(package_dependency()),
%%   <<"format">> => list(any()),
%%   <<"namespace">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"package">> => string(),
%%   <<"version">> => string(),
%%   <<"versionRevision">> => string()
%% }
-type list_package_version_dependencies_result() :: #{binary() => any()}.


%% Example:
%% upstream_repository() :: #{
%%   <<"repositoryName">> => string()
%% }
-type upstream_repository() :: #{binary() => any()}.


%% Example:
%% list_repositories_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"repositories">> => list(repository_summary())
%% }
-type list_repositories_result() :: #{binary() => any()}.


%% Example:
%% delete_domain_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string()
%% }
-type delete_domain_request() :: #{binary() => any()}.


%% Example:
%% list_associated_packages_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"packages">> => list(associated_package())
%% }
-type list_associated_packages_result() :: #{binary() => any()}.


%% Example:
%% repository_summary() :: #{
%%   <<"administratorAccount">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainName">> => string(),
%%   <<"domainOwner">> => string(),
%%   <<"name">> => string()
%% }
-type repository_summary() :: #{binary() => any()}.


%% Example:
%% delete_package_versions_result() :: #{
%%   <<"failedVersions">> => map(),
%%   <<"successfulVersions">> => map()
%% }
-type delete_package_versions_result() :: #{binary() => any()}.


%% Example:
%% list_sub_package_groups_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"packageGroup">> := string()
%% }
-type list_sub_package_groups_request() :: #{binary() => any()}.


%% Example:
%% delete_domain_permissions_policy_result() :: #{
%%   <<"policy">> => resource_policy()
%% }
-type delete_domain_permissions_policy_result() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% package_group_origin_restriction() :: #{
%%   <<"effectiveMode">> => list(any()),
%%   <<"inheritedFrom">> => package_group_reference(),
%%   <<"mode">> => list(any()),
%%   <<"repositoriesCount">> => float()
%% }
-type package_group_origin_restriction() :: #{binary() => any()}.


%% Example:
%% delete_package_group_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"packageGroup">> := string()
%% }
-type delete_package_group_request() :: #{binary() => any()}.


%% Example:
%% list_repositories_in_domain_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"repositories">> => list(repository_summary())
%% }
-type list_repositories_in_domain_result() :: #{binary() => any()}.


%% Example:
%% create_domain_request() :: #{
%%   <<"domain">> := string(),
%%   <<"encryptionKey">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type create_domain_request() :: #{binary() => any()}.


%% Example:
%% domain_entry_point() :: #{
%%   <<"externalConnectionName">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type domain_entry_point() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% delete_package_versions_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"expectedStatus">> => list(any()),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"repository">> := string(),
%%   <<"versions">> := list(string())
%% }
-type delete_package_versions_request() :: #{binary() => any()}.


%% Example:
%% get_repository_endpoint_result() :: #{
%%   <<"repositoryEndpoint">> => string()
%% }
-type get_repository_endpoint_result() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% delete_domain_result() :: #{
%%   <<"domain">> => domain_description()
%% }
-type delete_domain_result() :: #{binary() => any()}.


%% Example:
%% get_package_version_readme_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"packageVersion">> := string(),
%%   <<"repository">> := string()
%% }
-type get_package_version_readme_request() :: #{binary() => any()}.


%% Example:
%% delete_repository_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"repository">> := string()
%% }
-type delete_repository_request() :: #{binary() => any()}.


%% Example:
%% package_group_allowed_repository() :: #{
%%   <<"originRestrictionType">> => list(any()),
%%   <<"repositoryName">> => string()
%% }
-type package_group_allowed_repository() :: #{binary() => any()}.


%% Example:
%% list_repositories_in_domain_request() :: #{
%%   <<"administratorAccount">> => string(),
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"repositoryPrefix">> => string()
%% }
-type list_repositories_in_domain_request() :: #{binary() => any()}.


%% Example:
%% associate_external_connection_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"externalConnection">> := string(),
%%   <<"repository">> := string()
%% }
-type associate_external_connection_request() :: #{binary() => any()}.


%% Example:
%% describe_package_result() :: #{
%%   <<"package">> => package_description()
%% }
-type describe_package_result() :: #{binary() => any()}.


%% Example:
%% dispose_package_versions_result() :: #{
%%   <<"failedVersions">> => map(),
%%   <<"successfulVersions">> => map()
%% }
-type dispose_package_versions_result() :: #{binary() => any()}.


%% Example:
%% list_domains_result() :: #{
%%   <<"domains">> => list(domain_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_domains_result() :: #{binary() => any()}.


%% Example:
%% update_package_group_origin_configuration_request() :: #{
%%   <<"addAllowedRepositories">> => list(package_group_allowed_repository()),
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"packageGroup">> := string(),
%%   <<"removeAllowedRepositories">> => list(package_group_allowed_repository()),
%%   <<"restrictions">> => map()
%% }
-type update_package_group_origin_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_packages_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"packages">> => list(package_summary())
%% }
-type list_packages_result() :: #{binary() => any()}.


%% Example:
%% successful_package_version_info() :: #{
%%   <<"revision">> => string(),
%%   <<"status">> => list(any())
%% }
-type successful_package_version_info() :: #{binary() => any()}.


%% Example:
%% get_authorization_token_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"durationSeconds">> => float()
%% }
-type get_authorization_token_request() :: #{binary() => any()}.


%% Example:
%% copy_package_versions_result() :: #{
%%   <<"failedVersions">> => map(),
%%   <<"successfulVersions">> => map()
%% }
-type copy_package_versions_result() :: #{binary() => any()}.


%% Example:
%% list_package_groups_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"prefix">> => string()
%% }
-type list_package_groups_request() :: #{binary() => any()}.


%% Example:
%% license_info() :: #{
%%   <<"name">> => string(),
%%   <<"url">> => string()
%% }
-type license_info() :: #{binary() => any()}.


%% Example:
%% publish_package_version_request() :: #{
%%   <<"assetContent">> := binary(),
%%   <<"assetName">> := string(),
%%   <<"assetSHA256">> := string(),
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"packageVersion">> := string(),
%%   <<"repository">> := string(),
%%   <<"unfinished">> => boolean()
%% }
-type publish_package_version_request() :: #{binary() => any()}.


%% Example:
%% describe_package_group_result() :: #{
%%   <<"packageGroup">> => package_group_description()
%% }
-type describe_package_group_result() :: #{binary() => any()}.


%% Example:
%% delete_repository_permissions_policy_result() :: #{
%%   <<"policy">> => resource_policy()
%% }
-type delete_repository_permissions_policy_result() :: #{binary() => any()}.


%% Example:
%% package_group_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"contactInfo">> => string(),
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainName">> => string(),
%%   <<"domainOwner">> => string(),
%%   <<"originConfiguration">> => package_group_origin_configuration(),
%%   <<"parent">> => package_group_reference(),
%%   <<"pattern">> => string()
%% }
-type package_group_summary() :: #{binary() => any()}.


%% Example:
%% package_description() :: #{
%%   <<"format">> => list(any()),
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"originConfiguration">> => package_origin_configuration()
%% }
-type package_description() :: #{binary() => any()}.


%% Example:
%% list_domains_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_domains_request() :: #{binary() => any()}.


%% Example:
%% package_summary() :: #{
%%   <<"format">> => list(any()),
%%   <<"namespace">> => string(),
%%   <<"originConfiguration">> => package_origin_configuration(),
%%   <<"package">> => string()
%% }
-type package_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_sub_package_groups_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"packageGroups">> => list(package_group_summary())
%% }
-type list_sub_package_groups_result() :: #{binary() => any()}.


%% Example:
%% resource_policy() :: #{
%%   <<"document">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"revision">> => string()
%% }
-type resource_policy() :: #{binary() => any()}.


%% Example:
%% get_domain_permissions_policy_result() :: #{
%%   <<"policy">> => resource_policy()
%% }
-type get_domain_permissions_policy_result() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.


%% Example:
%% disassociate_external_connection_result() :: #{
%%   <<"repository">> => repository_description()
%% }
-type disassociate_external_connection_result() :: #{binary() => any()}.


%% Example:
%% create_repository_request() :: #{
%%   <<"description">> => string(),
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"repository">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"upstreams">> => list(upstream_repository())
%% }
-type create_repository_request() :: #{binary() => any()}.


%% Example:
%% disassociate_external_connection_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"externalConnection">> := string(),
%%   <<"repository">> := string()
%% }
-type disassociate_external_connection_request() :: #{binary() => any()}.


%% Example:
%% put_domain_permissions_policy_result() :: #{
%%   <<"policy">> => resource_policy()
%% }
-type put_domain_permissions_policy_result() :: #{binary() => any()}.


%% Example:
%% package_group_description() :: #{
%%   <<"arn">> => string(),
%%   <<"contactInfo">> => string(),
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainName">> => string(),
%%   <<"domainOwner">> => string(),
%%   <<"originConfiguration">> => package_group_origin_configuration(),
%%   <<"parent">> => package_group_reference(),
%%   <<"pattern">> => string()
%% }
-type package_group_description() :: #{binary() => any()}.


%% Example:
%% describe_package_version_result() :: #{
%%   <<"packageVersion">> => package_version_description()
%% }
-type describe_package_version_result() :: #{binary() => any()}.


%% Example:
%% delete_package_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"repository">> := string()
%% }
-type delete_package_request() :: #{binary() => any()}.


%% Example:
%% put_repository_permissions_policy_result() :: #{
%%   <<"policy">> => resource_policy()
%% }
-type put_repository_permissions_policy_result() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% describe_domain_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string()
%% }
-type describe_domain_request() :: #{binary() => any()}.


%% Example:
%% upstream_repository_info() :: #{
%%   <<"repositoryName">> => string()
%% }
-type upstream_repository_info() :: #{binary() => any()}.


%% Example:
%% associated_package() :: #{
%%   <<"associationType">> => list(any()),
%%   <<"format">> => list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> => string()
%% }
-type associated_package() :: #{binary() => any()}.


%% Example:
%% get_authorization_token_result() :: #{
%%   <<"authorizationToken">> => string(),
%%   <<"expiration">> => non_neg_integer()
%% }
-type get_authorization_token_result() :: #{binary() => any()}.


%% Example:
%% put_package_origin_configuration_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"repository">> := string(),
%%   <<"restrictions">> := package_origin_restrictions()
%% }
-type put_package_origin_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_repository_endpoint_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"endpointType">> => list(any()),
%%   <<"format">> := list(any()),
%%   <<"repository">> := string()
%% }
-type get_repository_endpoint_request() :: #{binary() => any()}.


%% Example:
%% get_domain_permissions_policy_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string()
%% }
-type get_domain_permissions_policy_request() :: #{binary() => any()}.


%% Example:
%% get_associated_package_group_result() :: #{
%%   <<"associationType">> => list(any()),
%%   <<"packageGroup">> => package_group_description()
%% }
-type get_associated_package_group_result() :: #{binary() => any()}.


%% Example:
%% get_repository_permissions_policy_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"repository">> := string()
%% }
-type get_repository_permissions_policy_request() :: #{binary() => any()}.


%% Example:
%% list_associated_packages_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"packageGroup">> := string(),
%%   <<"preview">> => boolean()
%% }
-type list_associated_packages_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% put_domain_permissions_policy_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"policyDocument">> := string(),
%%   <<"policyRevision">> => string()
%% }
-type put_domain_permissions_policy_request() :: #{binary() => any()}.


%% Example:
%% list_package_versions_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"namespace">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"originType">> => list(any()),
%%   <<"package">> := string(),
%%   <<"repository">> := string(),
%%   <<"sortBy">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type list_package_versions_request() :: #{binary() => any()}.


%% Example:
%% create_package_group_result() :: #{
%%   <<"packageGroup">> => package_group_description()
%% }
-type create_package_group_result() :: #{binary() => any()}.


%% Example:
%% associate_external_connection_result() :: #{
%%   <<"repository">> => repository_description()
%% }
-type associate_external_connection_result() :: #{binary() => any()}.


%% Example:
%% describe_package_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"repository">> := string()
%% }
-type describe_package_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% package_dependency() :: #{
%%   <<"dependencyType">> => string(),
%%   <<"namespace">> => string(),
%%   <<"package">> => string(),
%%   <<"versionRequirement">> => string()
%% }
-type package_dependency() :: #{binary() => any()}.


%% Example:
%% domain_description() :: #{
%%   <<"arn">> => string(),
%%   <<"assetSizeBytes">> => float(),
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"encryptionKey">> => string(),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"repositoryCount">> => integer(),
%%   <<"s3BucketArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type domain_description() :: #{binary() => any()}.


%% Example:
%% list_package_versions_result() :: #{
%%   <<"defaultDisplayVersion">> => string(),
%%   <<"format">> => list(any()),
%%   <<"namespace">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"package">> => string(),
%%   <<"versions">> => list(package_version_summary())
%% }
-type list_package_versions_result() :: #{binary() => any()}.


%% Example:
%% delete_package_result() :: #{
%%   <<"deletedPackage">> => package_summary()
%% }
-type delete_package_result() :: #{binary() => any()}.


%% Example:
%% repository_external_connection_info() :: #{
%%   <<"externalConnectionName">> => string(),
%%   <<"packageFormat">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type repository_external_connection_info() :: #{binary() => any()}.


%% Example:
%% update_repository_request() :: #{
%%   <<"description">> => string(),
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"repository">> := string(),
%%   <<"upstreams">> => list(upstream_repository())
%% }
-type update_repository_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_result() :: #{}
-type tag_resource_result() :: #{}.


%% Example:
%% list_repositories_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"repositoryPrefix">> => string()
%% }
-type list_repositories_request() :: #{binary() => any()}.


%% Example:
%% package_version_summary() :: #{
%%   <<"origin">> => package_version_origin(),
%%   <<"revision">> => string(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string()
%% }
-type package_version_summary() :: #{binary() => any()}.


%% Example:
%% update_package_group_origin_configuration_result() :: #{
%%   <<"allowedRepositoryUpdates">> => map(),
%%   <<"packageGroup">> => package_group_description()
%% }
-type update_package_group_origin_configuration_result() :: #{binary() => any()}.


%% Example:
%% describe_domain_result() :: #{
%%   <<"domain">> => domain_description()
%% }
-type describe_domain_result() :: #{binary() => any()}.


%% Example:
%% get_package_version_asset_request() :: #{
%%   <<"asset">> := string(),
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"packageVersion">> := string(),
%%   <<"packageVersionRevision">> => string(),
%%   <<"repository">> := string()
%% }
-type get_package_version_asset_request() :: #{binary() => any()}.


%% Example:
%% create_repository_result() :: #{
%%   <<"repository">> => repository_description()
%% }
-type create_repository_result() :: #{binary() => any()}.


%% Example:
%% describe_package_version_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"packageVersion">> := string(),
%%   <<"repository">> := string()
%% }
-type describe_package_version_request() :: #{binary() => any()}.


%% Example:
%% repository_description() :: #{
%%   <<"administratorAccount">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainName">> => string(),
%%   <<"domainOwner">> => string(),
%%   <<"externalConnections">> => list(repository_external_connection_info()),
%%   <<"name">> => string(),
%%   <<"upstreams">> => list(upstream_repository_info())
%% }
-type repository_description() :: #{binary() => any()}.


%% Example:
%% get_repository_permissions_policy_result() :: #{
%%   <<"policy">> => resource_policy()
%% }
-type get_repository_permissions_policy_result() :: #{binary() => any()}.


%% Example:
%% package_version_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string()
%% }
-type package_version_error() :: #{binary() => any()}.


%% Example:
%% put_package_origin_configuration_result() :: #{
%%   <<"originConfiguration">> => package_origin_configuration()
%% }
-type put_package_origin_configuration_result() :: #{binary() => any()}.


%% Example:
%% delete_repository_permissions_policy_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"policyRevision">> => string(),
%%   <<"repository">> := string()
%% }
-type delete_repository_permissions_policy_request() :: #{binary() => any()}.


%% Example:
%% package_origin_restrictions() :: #{
%%   <<"publish">> => list(any()),
%%   <<"upstream">> => list(any())
%% }
-type package_origin_restrictions() :: #{binary() => any()}.


%% Example:
%% copy_package_versions_request() :: #{
%%   <<"allowOverwrite">> => boolean(),
%%   <<"destinationRepository">> := string(),
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"format">> := list(any()),
%%   <<"includeFromUpstream">> => boolean(),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"sourceRepository">> := string(),
%%   <<"versionRevisions">> => map(),
%%   <<"versions">> => list(string())
%% }
-type copy_package_versions_request() :: #{binary() => any()}.


%% Example:
%% update_package_versions_status_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"expectedStatus">> => list(any()),
%%   <<"format">> := list(any()),
%%   <<"namespace">> => string(),
%%   <<"package">> := string(),
%%   <<"repository">> := string(),
%%   <<"targetStatus">> := list(any()),
%%   <<"versionRevisions">> => map(),
%%   <<"versions">> := list(string())
%% }
-type update_package_versions_status_request() :: #{binary() => any()}.


%% Example:
%% update_repository_result() :: #{
%%   <<"repository">> => repository_description()
%% }
-type update_repository_result() :: #{binary() => any()}.


%% Example:
%% delete_domain_permissions_policy_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"policyRevision">> => string()
%% }
-type delete_domain_permissions_policy_request() :: #{binary() => any()}.


%% Example:
%% package_group_origin_configuration() :: #{
%%   <<"restrictions">> => map()
%% }
-type package_group_origin_configuration() :: #{binary() => any()}.


%% Example:
%% describe_repository_request() :: #{
%%   <<"domain">> := string(),
%%   <<"domainOwner">> => string(),
%%   <<"repository">> := string()
%% }
-type describe_repository_request() :: #{binary() => any()}.

-type associate_external_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type copy_package_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_package_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_repository_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_domain_permissions_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_package_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_package_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_repository_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_repository_permissions_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_package_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_package_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_repository_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_external_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type dispose_package_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_associated_package_group_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_authorization_token_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_domain_permissions_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_package_version_asset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_package_version_readme_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_repository_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_repository_permissions_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_allowed_repositories_for_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_associated_packages_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_domains_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_package_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_package_version_assets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_package_version_dependencies_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_package_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_packages_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_repositories_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_repositories_in_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_sub_package_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type publish_package_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_domain_permissions_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_package_origin_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_repository_permissions_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_package_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_package_group_origin_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_package_versions_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_repository_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

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
-spec associate_external_connection(aws_client:aws_client(), associate_external_connection_request()) ->
    {ok, associate_external_connection_result(), tuple()} |
    {error, any()} |
    {error, associate_external_connection_errors(), tuple()}.
associate_external_connection(Client, Input) ->
    associate_external_connection(Client, Input, []).

-spec associate_external_connection(aws_client:aws_client(), associate_external_connection_request(), proplists:proplist()) ->
    {ok, associate_external_connection_result(), tuple()} |
    {error, any()} |
    {error, associate_external_connection_errors(), tuple()}.
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
-spec copy_package_versions(aws_client:aws_client(), copy_package_versions_request()) ->
    {ok, copy_package_versions_result(), tuple()} |
    {error, any()} |
    {error, copy_package_versions_errors(), tuple()}.
copy_package_versions(Client, Input) ->
    copy_package_versions(Client, Input, []).

-spec copy_package_versions(aws_client:aws_client(), copy_package_versions_request(), proplists:proplist()) ->
    {ok, copy_package_versions_result(), tuple()} |
    {error, any()} |
    {error, copy_package_versions_errors(), tuple()}.
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
-spec create_domain(aws_client:aws_client(), create_domain_request()) ->
    {ok, create_domain_result(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).

-spec create_domain(aws_client:aws_client(), create_domain_request(), proplists:proplist()) ->
    {ok, create_domain_result(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
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
%% Creates a package group.
%%
%% For more information about creating package groups, including example CLI
%% commands, see Create a package group:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/create-package-group.html
%% in the CodeArtifact User Guide.
-spec create_package_group(aws_client:aws_client(), create_package_group_request()) ->
    {ok, create_package_group_result(), tuple()} |
    {error, any()} |
    {error, create_package_group_errors(), tuple()}.
create_package_group(Client, Input) ->
    create_package_group(Client, Input, []).

-spec create_package_group(aws_client:aws_client(), create_package_group_request(), proplists:proplist()) ->
    {ok, create_package_group_result(), tuple()} |
    {error, any()} |
    {error, create_package_group_errors(), tuple()}.
create_package_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package-group"],
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
%% Creates a repository.
-spec create_repository(aws_client:aws_client(), create_repository_request()) ->
    {ok, create_repository_result(), tuple()} |
    {error, any()} |
    {error, create_repository_errors(), tuple()}.
create_repository(Client, Input) ->
    create_repository(Client, Input, []).

-spec create_repository(aws_client:aws_client(), create_repository_request(), proplists:proplist()) ->
    {ok, create_repository_result(), tuple()} |
    {error, any()} |
    {error, create_repository_errors(), tuple()}.
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
-spec delete_domain(aws_client:aws_client(), delete_domain_request()) ->
    {ok, delete_domain_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input) ->
    delete_domain(Client, Input, []).

-spec delete_domain(aws_client:aws_client(), delete_domain_request(), proplists:proplist()) ->
    {ok, delete_domain_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
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
-spec delete_domain_permissions_policy(aws_client:aws_client(), delete_domain_permissions_policy_request()) ->
    {ok, delete_domain_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_permissions_policy_errors(), tuple()}.
delete_domain_permissions_policy(Client, Input) ->
    delete_domain_permissions_policy(Client, Input, []).

-spec delete_domain_permissions_policy(aws_client:aws_client(), delete_domain_permissions_policy_request(), proplists:proplist()) ->
    {ok, delete_domain_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, delete_domain_permissions_policy_errors(), tuple()}.
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
-spec delete_package(aws_client:aws_client(), delete_package_request()) ->
    {ok, delete_package_result(), tuple()} |
    {error, any()} |
    {error, delete_package_errors(), tuple()}.
delete_package(Client, Input) ->
    delete_package(Client, Input, []).

-spec delete_package(aws_client:aws_client(), delete_package_request(), proplists:proplist()) ->
    {ok, delete_package_result(), tuple()} |
    {error, any()} |
    {error, delete_package_errors(), tuple()}.
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

%% @doc Deletes a package group.
%%
%% Deleting a package group does not delete packages or package versions
%% associated with the package group.
%% When a package group is deleted, the direct child package groups will
%% become children of the package
%% group's direct parent package group. Therefore, if any of the child
%% groups are inheriting any settings
%% from the parent, those settings could change.
-spec delete_package_group(aws_client:aws_client(), delete_package_group_request()) ->
    {ok, delete_package_group_result(), tuple()} |
    {error, any()} |
    {error, delete_package_group_errors(), tuple()}.
delete_package_group(Client, Input) ->
    delete_package_group(Client, Input, []).

-spec delete_package_group(aws_client:aws_client(), delete_package_group_request(), proplists:proplist()) ->
    {ok, delete_package_group_result(), tuple()} |
    {error, any()} |
    {error, delete_package_group_errors(), tuple()}.
delete_package_group(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/package-group"],
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
                     {<<"package-group">>, <<"packageGroup">>}
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
-spec delete_package_versions(aws_client:aws_client(), delete_package_versions_request()) ->
    {ok, delete_package_versions_result(), tuple()} |
    {error, any()} |
    {error, delete_package_versions_errors(), tuple()}.
delete_package_versions(Client, Input) ->
    delete_package_versions(Client, Input, []).

-spec delete_package_versions(aws_client:aws_client(), delete_package_versions_request(), proplists:proplist()) ->
    {ok, delete_package_versions_result(), tuple()} |
    {error, any()} |
    {error, delete_package_versions_errors(), tuple()}.
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
-spec delete_repository(aws_client:aws_client(), delete_repository_request()) ->
    {ok, delete_repository_result(), tuple()} |
    {error, any()} |
    {error, delete_repository_errors(), tuple()}.
delete_repository(Client, Input) ->
    delete_repository(Client, Input, []).

-spec delete_repository(aws_client:aws_client(), delete_repository_request(), proplists:proplist()) ->
    {ok, delete_repository_result(), tuple()} |
    {error, any()} |
    {error, delete_repository_errors(), tuple()}.
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
-spec delete_repository_permissions_policy(aws_client:aws_client(), delete_repository_permissions_policy_request()) ->
    {ok, delete_repository_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, delete_repository_permissions_policy_errors(), tuple()}.
delete_repository_permissions_policy(Client, Input) ->
    delete_repository_permissions_policy(Client, Input, []).

-spec delete_repository_permissions_policy(aws_client:aws_client(), delete_repository_permissions_policy_request(), proplists:proplist()) ->
    {ok, delete_repository_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, delete_repository_permissions_policy_errors(), tuple()}.
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
-spec describe_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_domain_result(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Domain)
  when is_map(Client) ->
    describe_domain(Client, Domain, #{}, #{}).

-spec describe_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_domain_result(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Domain, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_domain(Client, Domain, QueryMap, HeadersMap, []).

-spec describe_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_domain_result(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
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
-spec describe_package(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_package_result(), tuple()} |
    {error, any()} |
    {error, describe_package_errors(), tuple()}.
describe_package(Client, Domain, Format, Package, Repository)
  when is_map(Client) ->
    describe_package(Client, Domain, Format, Package, Repository, #{}, #{}).

-spec describe_package(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_package_result(), tuple()} |
    {error, any()} |
    {error, describe_package_errors(), tuple()}.
describe_package(Client, Domain, Format, Package, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package(Client, Domain, Format, Package, Repository, QueryMap, HeadersMap, []).

-spec describe_package(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_package_result(), tuple()} |
    {error, any()} |
    {error, describe_package_errors(), tuple()}.
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

%% @doc Returns a PackageGroupDescription:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroupDescription.html
%% object that
%% contains information about the requested package group.
-spec describe_package_group(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_package_group_result(), tuple()} |
    {error, any()} |
    {error, describe_package_group_errors(), tuple()}.
describe_package_group(Client, Domain, PackageGroup)
  when is_map(Client) ->
    describe_package_group(Client, Domain, PackageGroup, #{}, #{}).

-spec describe_package_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_package_group_result(), tuple()} |
    {error, any()} |
    {error, describe_package_group_errors(), tuple()}.
describe_package_group(Client, Domain, PackageGroup, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package_group(Client, Domain, PackageGroup, QueryMap, HeadersMap, []).

-spec describe_package_group(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_package_group_result(), tuple()} |
    {error, any()} |
    {error, describe_package_group_errors(), tuple()}.
describe_package_group(Client, Domain, PackageGroup, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/package-group"],
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
        {<<"package-group">>, PackageGroup}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns a
%% PackageVersionDescription:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html
%% object that contains information about the requested package version.
-spec describe_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_package_version_result(), tuple()} |
    {error, any()} |
    {error, describe_package_version_errors(), tuple()}.
describe_package_version(Client, Domain, Format, Package, PackageVersion, Repository)
  when is_map(Client) ->
    describe_package_version(Client, Domain, Format, Package, PackageVersion, Repository, #{}, #{}).

-spec describe_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_package_version_result(), tuple()} |
    {error, any()} |
    {error, describe_package_version_errors(), tuple()}.
describe_package_version(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package_version(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap, []).

-spec describe_package_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_package_version_result(), tuple()} |
    {error, any()} |
    {error, describe_package_version_errors(), tuple()}.
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
-spec describe_repository(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_repository_result(), tuple()} |
    {error, any()} |
    {error, describe_repository_errors(), tuple()}.
describe_repository(Client, Domain, Repository)
  when is_map(Client) ->
    describe_repository(Client, Domain, Repository, #{}, #{}).

-spec describe_repository(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_repository_result(), tuple()} |
    {error, any()} |
    {error, describe_repository_errors(), tuple()}.
describe_repository(Client, Domain, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_repository(Client, Domain, Repository, QueryMap, HeadersMap, []).

-spec describe_repository(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_repository_result(), tuple()} |
    {error, any()} |
    {error, describe_repository_errors(), tuple()}.
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
-spec disassociate_external_connection(aws_client:aws_client(), disassociate_external_connection_request()) ->
    {ok, disassociate_external_connection_result(), tuple()} |
    {error, any()} |
    {error, disassociate_external_connection_errors(), tuple()}.
disassociate_external_connection(Client, Input) ->
    disassociate_external_connection(Client, Input, []).

-spec disassociate_external_connection(aws_client:aws_client(), disassociate_external_connection_request(), proplists:proplist()) ->
    {ok, disassociate_external_connection_result(), tuple()} |
    {error, any()} |
    {error, disassociate_external_connection_errors(), tuple()}.
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
-spec dispose_package_versions(aws_client:aws_client(), dispose_package_versions_request()) ->
    {ok, dispose_package_versions_result(), tuple()} |
    {error, any()} |
    {error, dispose_package_versions_errors(), tuple()}.
dispose_package_versions(Client, Input) ->
    dispose_package_versions(Client, Input, []).

-spec dispose_package_versions(aws_client:aws_client(), dispose_package_versions_request(), proplists:proplist()) ->
    {ok, dispose_package_versions_result(), tuple()} |
    {error, any()} |
    {error, dispose_package_versions_errors(), tuple()}.
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

%% @doc Returns the most closely associated package group to the specified
%% package.
%%
%% This API does not require that the package exist
%% in any repository in the domain. As such, `GetAssociatedPackageGroup'
%% can be used to see which package group's origin configuration
%% applies to a package before that package is in a repository. This can be
%% helpful to check if public packages are blocked without ingesting them.
%%
%% For information package group association and matching, see
%% Package group
%% definition syntax and matching behavior:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html
%% in the CodeArtifact User Guide.
-spec get_associated_package_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_associated_package_group_result(), tuple()} |
    {error, any()} |
    {error, get_associated_package_group_errors(), tuple()}.
get_associated_package_group(Client, Domain, Format, Package)
  when is_map(Client) ->
    get_associated_package_group(Client, Domain, Format, Package, #{}, #{}).

-spec get_associated_package_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_associated_package_group_result(), tuple()} |
    {error, any()} |
    {error, get_associated_package_group_errors(), tuple()}.
get_associated_package_group(Client, Domain, Format, Package, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_associated_package_group(Client, Domain, Format, Package, QueryMap, HeadersMap, []).

-spec get_associated_package_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_associated_package_group_result(), tuple()} |
    {error, any()} |
    {error, get_associated_package_group_errors(), tuple()}.
get_associated_package_group(Client, Domain, Format, Package, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/get-associated-package-group"],
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
        {<<"package">>, Package}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

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
-spec get_authorization_token(aws_client:aws_client(), get_authorization_token_request()) ->
    {ok, get_authorization_token_result(), tuple()} |
    {error, any()} |
    {error, get_authorization_token_errors(), tuple()}.
get_authorization_token(Client, Input) ->
    get_authorization_token(Client, Input, []).

-spec get_authorization_token(aws_client:aws_client(), get_authorization_token_request(), proplists:proplist()) ->
    {ok, get_authorization_token_result(), tuple()} |
    {error, any()} |
    {error, get_authorization_token_errors(), tuple()}.
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
-spec get_domain_permissions_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_domain_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, get_domain_permissions_policy_errors(), tuple()}.
get_domain_permissions_policy(Client, Domain)
  when is_map(Client) ->
    get_domain_permissions_policy(Client, Domain, #{}, #{}).

-spec get_domain_permissions_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_domain_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, get_domain_permissions_policy_errors(), tuple()}.
get_domain_permissions_policy(Client, Domain, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_permissions_policy(Client, Domain, QueryMap, HeadersMap, []).

-spec get_domain_permissions_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, get_domain_permissions_policy_errors(), tuple()}.
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
-spec get_package_version_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_package_version_asset_result(), tuple()} |
    {error, any()} |
    {error, get_package_version_asset_errors(), tuple()}.
get_package_version_asset(Client, Asset, Domain, Format, Package, PackageVersion, Repository)
  when is_map(Client) ->
    get_package_version_asset(Client, Asset, Domain, Format, Package, PackageVersion, Repository, #{}, #{}).

-spec get_package_version_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_package_version_asset_result(), tuple()} |
    {error, any()} |
    {error, get_package_version_asset_errors(), tuple()}.
get_package_version_asset(Client, Asset, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package_version_asset(Client, Asset, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap, []).

-spec get_package_version_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_package_version_asset_result(), tuple()} |
    {error, any()} |
    {error, get_package_version_asset_errors(), tuple()}.
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
-spec get_package_version_readme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_package_version_readme_result(), tuple()} |
    {error, any()} |
    {error, get_package_version_readme_errors(), tuple()}.
get_package_version_readme(Client, Domain, Format, Package, PackageVersion, Repository)
  when is_map(Client) ->
    get_package_version_readme(Client, Domain, Format, Package, PackageVersion, Repository, #{}, #{}).

-spec get_package_version_readme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_package_version_readme_result(), tuple()} |
    {error, any()} |
    {error, get_package_version_readme_errors(), tuple()}.
get_package_version_readme(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_package_version_readme(Client, Domain, Format, Package, PackageVersion, Repository, QueryMap, HeadersMap, []).

-spec get_package_version_readme(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_package_version_readme_result(), tuple()} |
    {error, any()} |
    {error, get_package_version_readme_errors(), tuple()}.
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
%% `cargo'
%%
%% `generic'
%%
%% `maven'
%%
%% `npm'
%%
%% `nuget'
%%
%% `pypi'
%%
%% `ruby'
%%
%% `swift'
-spec get_repository_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_repository_endpoint_result(), tuple()} |
    {error, any()} |
    {error, get_repository_endpoint_errors(), tuple()}.
get_repository_endpoint(Client, Domain, Format, Repository)
  when is_map(Client) ->
    get_repository_endpoint(Client, Domain, Format, Repository, #{}, #{}).

-spec get_repository_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_repository_endpoint_result(), tuple()} |
    {error, any()} |
    {error, get_repository_endpoint_errors(), tuple()}.
get_repository_endpoint(Client, Domain, Format, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_repository_endpoint(Client, Domain, Format, Repository, QueryMap, HeadersMap, []).

-spec get_repository_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_repository_endpoint_result(), tuple()} |
    {error, any()} |
    {error, get_repository_endpoint_errors(), tuple()}.
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
        {<<"endpointType">>, maps:get(<<"endpointType">>, QueryMap, undefined)},
        {<<"format">>, Format},
        {<<"repository">>, Repository}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns the resource policy that is set on a repository.
-spec get_repository_permissions_policy(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_repository_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, get_repository_permissions_policy_errors(), tuple()}.
get_repository_permissions_policy(Client, Domain, Repository)
  when is_map(Client) ->
    get_repository_permissions_policy(Client, Domain, Repository, #{}, #{}).

-spec get_repository_permissions_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_repository_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, get_repository_permissions_policy_errors(), tuple()}.
get_repository_permissions_policy(Client, Domain, Repository, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_repository_permissions_policy(Client, Domain, Repository, QueryMap, HeadersMap, []).

-spec get_repository_permissions_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_repository_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, get_repository_permissions_policy_errors(), tuple()}.
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

%% @doc Lists the repositories in the added repositories list of the
%% specified restriction type for a package group.
%%
%% For more information about restriction types
%% and added repository lists, see Package group origin controls:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html
%% in the CodeArtifact User Guide.
-spec list_allowed_repositories_for_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_allowed_repositories_for_group_result(), tuple()} |
    {error, any()} |
    {error, list_allowed_repositories_for_group_errors(), tuple()}.
list_allowed_repositories_for_group(Client, Domain, OriginRestrictionType, PackageGroup)
  when is_map(Client) ->
    list_allowed_repositories_for_group(Client, Domain, OriginRestrictionType, PackageGroup, #{}, #{}).

-spec list_allowed_repositories_for_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_allowed_repositories_for_group_result(), tuple()} |
    {error, any()} |
    {error, list_allowed_repositories_for_group_errors(), tuple()}.
list_allowed_repositories_for_group(Client, Domain, OriginRestrictionType, PackageGroup, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_allowed_repositories_for_group(Client, Domain, OriginRestrictionType, PackageGroup, QueryMap, HeadersMap, []).

-spec list_allowed_repositories_for_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_allowed_repositories_for_group_result(), tuple()} |
    {error, any()} |
    {error, list_allowed_repositories_for_group_errors(), tuple()}.
list_allowed_repositories_for_group(Client, Domain, OriginRestrictionType, PackageGroup, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/package-group-allowed-repositories"],
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
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"originRestrictionType">>, OriginRestrictionType},
        {<<"package-group">>, PackageGroup}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of packages associated with the requested package
%% group.
%%
%% For information package group association and matching, see
%% Package group
%% definition syntax and matching behavior:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html
%% in the CodeArtifact User Guide.
-spec list_associated_packages(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_associated_packages_result(), tuple()} |
    {error, any()} |
    {error, list_associated_packages_errors(), tuple()}.
list_associated_packages(Client, Domain, PackageGroup)
  when is_map(Client) ->
    list_associated_packages(Client, Domain, PackageGroup, #{}, #{}).

-spec list_associated_packages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_associated_packages_result(), tuple()} |
    {error, any()} |
    {error, list_associated_packages_errors(), tuple()}.
list_associated_packages(Client, Domain, PackageGroup, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_packages(Client, Domain, PackageGroup, QueryMap, HeadersMap, []).

-spec list_associated_packages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_associated_packages_result(), tuple()} |
    {error, any()} |
    {error, list_associated_packages_errors(), tuple()}.
list_associated_packages(Client, Domain, PackageGroup, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/list-associated-packages"],
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
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"package-group">>, PackageGroup},
        {<<"preview">>, maps:get(<<"preview">>, QueryMap, undefined)}
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
-spec list_domains(aws_client:aws_client(), list_domains_request()) ->
    {ok, list_domains_result(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input) ->
    list_domains(Client, Input, []).

-spec list_domains(aws_client:aws_client(), list_domains_request(), proplists:proplist()) ->
    {ok, list_domains_result(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
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

%% @doc Returns a list of package groups in the requested domain.
-spec list_package_groups(aws_client:aws_client(), list_package_groups_request()) ->
    {ok, list_package_groups_result(), tuple()} |
    {error, any()} |
    {error, list_package_groups_errors(), tuple()}.
list_package_groups(Client, Input) ->
    list_package_groups(Client, Input, []).

-spec list_package_groups(aws_client:aws_client(), list_package_groups_request(), proplists:proplist()) ->
    {ok, list_package_groups_result(), tuple()} |
    {error, any()} |
    {error, list_package_groups_errors(), tuple()}.
list_package_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package-groups"],
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
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"prefix">>, <<"prefix">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Returns a list of
%% AssetSummary:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html
%% objects for assets in a package version.
-spec list_package_version_assets(aws_client:aws_client(), list_package_version_assets_request()) ->
    {ok, list_package_version_assets_result(), tuple()} |
    {error, any()} |
    {error, list_package_version_assets_errors(), tuple()}.
list_package_version_assets(Client, Input) ->
    list_package_version_assets(Client, Input, []).

-spec list_package_version_assets(aws_client:aws_client(), list_package_version_assets_request(), proplists:proplist()) ->
    {ok, list_package_version_assets_result(), tuple()} |
    {error, any()} |
    {error, list_package_version_assets_errors(), tuple()}.
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
-spec list_package_version_dependencies(aws_client:aws_client(), list_package_version_dependencies_request()) ->
    {ok, list_package_version_dependencies_result(), tuple()} |
    {error, any()} |
    {error, list_package_version_dependencies_errors(), tuple()}.
list_package_version_dependencies(Client, Input) ->
    list_package_version_dependencies(Client, Input, []).

-spec list_package_version_dependencies(aws_client:aws_client(), list_package_version_dependencies_request(), proplists:proplist()) ->
    {ok, list_package_version_dependencies_result(), tuple()} |
    {error, any()} |
    {error, list_package_version_dependencies_errors(), tuple()}.
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
-spec list_package_versions(aws_client:aws_client(), list_package_versions_request()) ->
    {ok, list_package_versions_result(), tuple()} |
    {error, any()} |
    {error, list_package_versions_errors(), tuple()}.
list_package_versions(Client, Input) ->
    list_package_versions(Client, Input, []).

-spec list_package_versions(aws_client:aws_client(), list_package_versions_request(), proplists:proplist()) ->
    {ok, list_package_versions_result(), tuple()} |
    {error, any()} |
    {error, list_package_versions_errors(), tuple()}.
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
-spec list_packages(aws_client:aws_client(), list_packages_request()) ->
    {ok, list_packages_result(), tuple()} |
    {error, any()} |
    {error, list_packages_errors(), tuple()}.
list_packages(Client, Input) ->
    list_packages(Client, Input, []).

-spec list_packages(aws_client:aws_client(), list_packages_request(), proplists:proplist()) ->
    {ok, list_packages_result(), tuple()} |
    {error, any()} |
    {error, list_packages_errors(), tuple()}.
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
-spec list_repositories(aws_client:aws_client(), list_repositories_request()) ->
    {ok, list_repositories_result(), tuple()} |
    {error, any()} |
    {error, list_repositories_errors(), tuple()}.
list_repositories(Client, Input) ->
    list_repositories(Client, Input, []).

-spec list_repositories(aws_client:aws_client(), list_repositories_request(), proplists:proplist()) ->
    {ok, list_repositories_result(), tuple()} |
    {error, any()} |
    {error, list_repositories_errors(), tuple()}.
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
-spec list_repositories_in_domain(aws_client:aws_client(), list_repositories_in_domain_request()) ->
    {ok, list_repositories_in_domain_result(), tuple()} |
    {error, any()} |
    {error, list_repositories_in_domain_errors(), tuple()}.
list_repositories_in_domain(Client, Input) ->
    list_repositories_in_domain(Client, Input, []).

-spec list_repositories_in_domain(aws_client:aws_client(), list_repositories_in_domain_request(), proplists:proplist()) ->
    {ok, list_repositories_in_domain_result(), tuple()} |
    {error, any()} |
    {error, list_repositories_in_domain_errors(), tuple()}.
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

%% @doc Returns a list of direct children of the specified package group.
%%
%% For information package group hierarchy, see
%% Package group
%% definition syntax and matching behavior:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html
%% in the CodeArtifact User Guide.
-spec list_sub_package_groups(aws_client:aws_client(), list_sub_package_groups_request()) ->
    {ok, list_sub_package_groups_result(), tuple()} |
    {error, any()} |
    {error, list_sub_package_groups_errors(), tuple()}.
list_sub_package_groups(Client, Input) ->
    list_sub_package_groups(Client, Input, []).

-spec list_sub_package_groups(aws_client:aws_client(), list_sub_package_groups_request(), proplists:proplist()) ->
    {ok, list_sub_package_groups_result(), tuple()} |
    {error, any()} |
    {error, list_sub_package_groups_errors(), tuple()}.
list_sub_package_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/package-groups/sub-groups"],
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
                     {<<"max-results">>, <<"maxResults">>},
                     {<<"next-token">>, <<"nextToken">>},
                     {<<"package-group">>, <<"packageGroup">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about Amazon Web Services tags for a specified
%% Amazon Resource Name (ARN) in CodeArtifact.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
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
-spec publish_package_version(aws_client:aws_client(), publish_package_version_request()) ->
    {ok, publish_package_version_result(), tuple()} |
    {error, any()} |
    {error, publish_package_version_errors(), tuple()}.
publish_package_version(Client, Input) ->
    publish_package_version(Client, Input, []).

-spec publish_package_version(aws_client:aws_client(), publish_package_version_request(), proplists:proplist()) ->
    {ok, publish_package_version_result(), tuple()} |
    {error, any()} |
    {error, publish_package_version_errors(), tuple()}.
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
-spec put_domain_permissions_policy(aws_client:aws_client(), put_domain_permissions_policy_request()) ->
    {ok, put_domain_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, put_domain_permissions_policy_errors(), tuple()}.
put_domain_permissions_policy(Client, Input) ->
    put_domain_permissions_policy(Client, Input, []).

-spec put_domain_permissions_policy(aws_client:aws_client(), put_domain_permissions_policy_request(), proplists:proplist()) ->
    {ok, put_domain_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, put_domain_permissions_policy_errors(), tuple()}.
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
-spec put_package_origin_configuration(aws_client:aws_client(), put_package_origin_configuration_request()) ->
    {ok, put_package_origin_configuration_result(), tuple()} |
    {error, any()} |
    {error, put_package_origin_configuration_errors(), tuple()}.
put_package_origin_configuration(Client, Input) ->
    put_package_origin_configuration(Client, Input, []).

-spec put_package_origin_configuration(aws_client:aws_client(), put_package_origin_configuration_request(), proplists:proplist()) ->
    {ok, put_package_origin_configuration_result(), tuple()} |
    {error, any()} |
    {error, put_package_origin_configuration_errors(), tuple()}.
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
-spec put_repository_permissions_policy(aws_client:aws_client(), put_repository_permissions_policy_request()) ->
    {ok, put_repository_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, put_repository_permissions_policy_errors(), tuple()}.
put_repository_permissions_policy(Client, Input) ->
    put_repository_permissions_policy(Client, Input, []).

-spec put_repository_permissions_policy(aws_client:aws_client(), put_repository_permissions_policy_request(), proplists:proplist()) ->
    {ok, put_repository_permissions_policy_result(), tuple()} |
    {error, any()} |
    {error, put_repository_permissions_policy_errors(), tuple()}.
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
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
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
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
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

%% @doc Updates a package group.
%%
%% This API cannot be used to update a package group's origin
%% configuration or pattern. To update a
%% package group's origin configuration, use
%% UpdatePackageGroupOriginConfiguration:
%% https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageGroupOriginConfiguration.html.
-spec update_package_group(aws_client:aws_client(), update_package_group_request()) ->
    {ok, update_package_group_result(), tuple()} |
    {error, any()} |
    {error, update_package_group_errors(), tuple()}.
update_package_group(Client, Input) ->
    update_package_group(Client, Input, []).

-spec update_package_group(aws_client:aws_client(), update_package_group_request(), proplists:proplist()) ->
    {ok, update_package_group_result(), tuple()} |
    {error, any()} |
    {error, update_package_group_errors(), tuple()}.
update_package_group(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/package-group"],
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

%% @doc Updates the package origin configuration for a package group.
%%
%% The package origin configuration determines how new versions of a package
%% can be added to a repository. You can allow or block direct
%% publishing of new package versions, or ingestion and retaining of new
%% package versions from an external connection or upstream source.
%% For more information about package group origin controls and
%% configuration, see
%% Package group origin controls:
%% https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html
%% in the CodeArtifact User Guide.
-spec update_package_group_origin_configuration(aws_client:aws_client(), update_package_group_origin_configuration_request()) ->
    {ok, update_package_group_origin_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_package_group_origin_configuration_errors(), tuple()}.
update_package_group_origin_configuration(Client, Input) ->
    update_package_group_origin_configuration(Client, Input, []).

-spec update_package_group_origin_configuration(aws_client:aws_client(), update_package_group_origin_configuration_request(), proplists:proplist()) ->
    {ok, update_package_group_origin_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_package_group_origin_configuration_errors(), tuple()}.
update_package_group_origin_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/package-group-origin-configuration"],
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
                     {<<"package-group">>, <<"packageGroup">>}
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
-spec update_package_versions_status(aws_client:aws_client(), update_package_versions_status_request()) ->
    {ok, update_package_versions_status_result(), tuple()} |
    {error, any()} |
    {error, update_package_versions_status_errors(), tuple()}.
update_package_versions_status(Client, Input) ->
    update_package_versions_status(Client, Input, []).

-spec update_package_versions_status(aws_client:aws_client(), update_package_versions_status_request(), proplists:proplist()) ->
    {ok, update_package_versions_status_result(), tuple()} |
    {error, any()} |
    {error, update_package_versions_status_errors(), tuple()}.
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
-spec update_repository(aws_client:aws_client(), update_repository_request()) ->
    {ok, update_repository_result(), tuple()} |
    {error, any()} |
    {error, update_repository_errors(), tuple()}.
update_repository(Client, Input) ->
    update_repository(Client, Input, []).

-spec update_repository(aws_client:aws_client(), update_repository_request(), proplists:proplist()) ->
    {ok, update_repository_result(), tuple()} |
    {error, any()} |
    {error, update_repository_errors(), tuple()}.
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
