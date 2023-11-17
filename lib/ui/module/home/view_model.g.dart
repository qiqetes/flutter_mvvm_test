// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeVMHash() => r'8a308f3e47c27fbc0bb71c4f210c280fd79eee2c';

/// See also [HomeVM].
@ProviderFor(HomeVM)
final homeVMProvider =
    AutoDisposeNotifierProvider<HomeVM, AsyncValue<List<Landmark>>>.internal(
  HomeVM.new,
  name: r'homeVMProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeVMHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeVM = AutoDisposeNotifier<AsyncValue<List<Landmark>>>;
String _$landmarkControllerHash() =>
    r'426ec98c161815f1cddcf1b8e8b5afa6135e5a39';

/// See also [LandmarkController].
@ProviderFor(LandmarkController)
final landmarkControllerProvider = AutoDisposeAsyncNotifierProvider<
    LandmarkController, List<Landmark>>.internal(
  LandmarkController.new,
  name: r'landmarkControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$landmarkControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LandmarkController = AutoDisposeAsyncNotifier<List<Landmark>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
