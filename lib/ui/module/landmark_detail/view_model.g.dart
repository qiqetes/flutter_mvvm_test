// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncLandmarkDetailHash() =>
    r'664c35e1bb1d365a38942a689acebe782260e2f1';

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

/// See also [asyncLandmarkDetail].
@ProviderFor(asyncLandmarkDetail)
const asyncLandmarkDetailProvider = AsyncLandmarkDetailFamily();

/// See also [asyncLandmarkDetail].
class AsyncLandmarkDetailFamily extends Family<AsyncValue<LandmarkDetail>> {
  /// See also [asyncLandmarkDetail].
  const AsyncLandmarkDetailFamily();

  /// See also [asyncLandmarkDetail].
  AsyncLandmarkDetailProvider call(
    Landmark landmark,
  ) {
    return AsyncLandmarkDetailProvider(
      landmark,
    );
  }

  @override
  AsyncLandmarkDetailProvider getProviderOverride(
    covariant AsyncLandmarkDetailProvider provider,
  ) {
    return call(
      provider.landmark,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'asyncLandmarkDetailProvider';
}

/// See also [asyncLandmarkDetail].
class AsyncLandmarkDetailProvider
    extends AutoDisposeFutureProvider<LandmarkDetail> {
  /// See also [asyncLandmarkDetail].
  AsyncLandmarkDetailProvider(
    Landmark landmark,
  ) : this._internal(
          (ref) => asyncLandmarkDetail(
            ref as AsyncLandmarkDetailRef,
            landmark,
          ),
          from: asyncLandmarkDetailProvider,
          name: r'asyncLandmarkDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncLandmarkDetailHash,
          dependencies: AsyncLandmarkDetailFamily._dependencies,
          allTransitiveDependencies:
              AsyncLandmarkDetailFamily._allTransitiveDependencies,
          landmark: landmark,
        );

  AsyncLandmarkDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.landmark,
  }) : super.internal();

  final Landmark landmark;

  @override
  Override overrideWith(
    FutureOr<LandmarkDetail> Function(AsyncLandmarkDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AsyncLandmarkDetailProvider._internal(
        (ref) => create(ref as AsyncLandmarkDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        landmark: landmark,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<LandmarkDetail> createElement() {
    return _AsyncLandmarkDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncLandmarkDetailProvider && other.landmark == landmark;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, landmark.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AsyncLandmarkDetailRef on AutoDisposeFutureProviderRef<LandmarkDetail> {
  /// The parameter `landmark` of this provider.
  Landmark get landmark;
}

class _AsyncLandmarkDetailProviderElement
    extends AutoDisposeFutureProviderElement<LandmarkDetail>
    with AsyncLandmarkDetailRef {
  _AsyncLandmarkDetailProviderElement(super.provider);

  @override
  Landmark get landmark => (origin as AsyncLandmarkDetailProvider).landmark;
}

String _$landmarkDetailHash() => r'b52854c2f873d486ee5dbc86f7dadcbaf67b9b39';

/// See also [landmarkDetail].
@ProviderFor(landmarkDetail)
const landmarkDetailProvider = LandmarkDetailFamily();

/// See also [landmarkDetail].
class LandmarkDetailFamily extends Family<LandmarkDetail> {
  /// See also [landmarkDetail].
  const LandmarkDetailFamily();

  /// See also [landmarkDetail].
  LandmarkDetailProvider call(
    Landmark landmark,
  ) {
    return LandmarkDetailProvider(
      landmark,
    );
  }

  @override
  LandmarkDetailProvider getProviderOverride(
    covariant LandmarkDetailProvider provider,
  ) {
    return call(
      provider.landmark,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'landmarkDetailProvider';
}

/// See also [landmarkDetail].
class LandmarkDetailProvider extends AutoDisposeProvider<LandmarkDetail> {
  /// See also [landmarkDetail].
  LandmarkDetailProvider(
    Landmark landmark,
  ) : this._internal(
          (ref) => landmarkDetail(
            ref as LandmarkDetailRef,
            landmark,
          ),
          from: landmarkDetailProvider,
          name: r'landmarkDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$landmarkDetailHash,
          dependencies: LandmarkDetailFamily._dependencies,
          allTransitiveDependencies:
              LandmarkDetailFamily._allTransitiveDependencies,
          landmark: landmark,
        );

  LandmarkDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.landmark,
  }) : super.internal();

  final Landmark landmark;

  @override
  Override overrideWith(
    LandmarkDetail Function(LandmarkDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LandmarkDetailProvider._internal(
        (ref) => create(ref as LandmarkDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        landmark: landmark,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<LandmarkDetail> createElement() {
    return _LandmarkDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LandmarkDetailProvider && other.landmark == landmark;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, landmark.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LandmarkDetailRef on AutoDisposeProviderRef<LandmarkDetail> {
  /// The parameter `landmark` of this provider.
  Landmark get landmark;
}

class _LandmarkDetailProviderElement
    extends AutoDisposeProviderElement<LandmarkDetail> with LandmarkDetailRef {
  _LandmarkDetailProviderElement(super.provider);

  @override
  Landmark get landmark => (origin as LandmarkDetailProvider).landmark;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
