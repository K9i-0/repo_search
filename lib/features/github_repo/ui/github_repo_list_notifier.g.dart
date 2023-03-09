// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'github_repo_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$githubRepoListHash() => r'43333c4c14a8d1726c35eb4d850f9dec1e6d0116';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GithubRepoList
    extends BuildlessAutoDisposeAsyncNotifier<GithubRepoListState> {
  late final String searchKeywords;

  Future<GithubRepoListState> build(
    String searchKeywords,
  );
}

/// See also [GithubRepoList].
@ProviderFor(GithubRepoList)
const githubRepoListProviderFamily = GithubRepoListFamily();

/// See also [GithubRepoList].
class GithubRepoListFamily extends Family<AsyncValue<GithubRepoListState>> {
  /// See also [GithubRepoList].
  const GithubRepoListFamily();

  /// See also [GithubRepoList].
  GithubRepoListProvider call(
    String searchKeywords,
  ) {
    return GithubRepoListProvider(
      searchKeywords,
    );
  }

  @override
  GithubRepoListProvider getProviderOverride(
    covariant GithubRepoListProvider provider,
  ) {
    return call(
      provider.searchKeywords,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    githubRepoRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>[
    githubRepoRepositoryProvider,
    githubAccessTokenProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'githubRepoListProviderFamily';
}

/// See also [GithubRepoList].
class GithubRepoListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GithubRepoList, GithubRepoListState> {
  /// See also [GithubRepoList].
  GithubRepoListProvider(
    this.searchKeywords,
  ) : super.internal(
          () => GithubRepoList()..searchKeywords = searchKeywords,
          from: githubRepoListProviderFamily,
          name: r'githubRepoListProviderFamily',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubRepoListHash,
          dependencies: GithubRepoListFamily._dependencies,
          allTransitiveDependencies:
              GithubRepoListFamily._allTransitiveDependencies,
        );

  final String searchKeywords;

  @override
  bool operator ==(Object other) {
    return other is GithubRepoListProvider &&
        other.searchKeywords == searchKeywords;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchKeywords.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<GithubRepoListState> runNotifierBuild(
    covariant GithubRepoList notifier,
  ) {
    return notifier.build(
      searchKeywords,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
