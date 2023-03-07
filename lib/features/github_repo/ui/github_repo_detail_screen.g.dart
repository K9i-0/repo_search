// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'github_repo_detail_screen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$watchersCountHash() => r'03ee96940d0141f776f5b385bceeabea06dabbff';

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

typedef WatchersCountRef = AutoDisposeFutureProviderRef<int>;

/// See also [watchersCount].
@ProviderFor(watchersCount)
const watchersCountProvider = WatchersCountFamily();

/// See also [watchersCount].
class WatchersCountFamily extends Family<AsyncValue<int>> {
  /// See also [watchersCount].
  const WatchersCountFamily();

  /// See also [watchersCount].
  WatchersCountProvider call(
    String repositoryUrl,
  ) {
    return WatchersCountProvider(
      repositoryUrl,
    );
  }

  @override
  WatchersCountProvider getProviderOverride(
    covariant WatchersCountProvider provider,
  ) {
    return call(
      provider.repositoryUrl,
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
  String? get name => r'watchersCountProvider';
}

/// See also [watchersCount].
class WatchersCountProvider extends AutoDisposeFutureProvider<int> {
  /// See also [watchersCount].
  WatchersCountProvider(
    this.repositoryUrl,
  ) : super.internal(
          (ref) => watchersCount(
            ref,
            repositoryUrl,
          ),
          from: watchersCountProvider,
          name: r'watchersCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$watchersCountHash,
          dependencies: WatchersCountFamily._dependencies,
          allTransitiveDependencies:
              WatchersCountFamily._allTransitiveDependencies,
        );

  final String repositoryUrl;

  @override
  bool operator ==(Object other) {
    return other is WatchersCountProvider &&
        other.repositoryUrl == repositoryUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, repositoryUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
