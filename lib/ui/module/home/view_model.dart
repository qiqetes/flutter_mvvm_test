import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/core/module/landmark/repository.dart';
import 'package:mvvm_test/core/module/landmark/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'view_model.g.dart';

@riverpod
class HomeVM extends _$HomeVM {
  @override
  AsyncValue<List<Landmark>> build() {
    final foo = ref.watch(landmarkControllerProvider);
    return foo;
  }
}

@riverpod
class LandmarkController extends _$LandmarkController {
  late final LandmarkRepository _repository;

  @override
  Future<List<Landmark>> build() {
    _repository = ref.watch(landmarkRepositoryProvider);
    return _fetchLandmarks();
  }

  Future<List<Landmark>> _fetchLandmarks() async {
    final res = await _repository.fetchLandmarks();
    ref.keepAlive();
    return res;
  }

  Future<void> refetchLandmarks() async {
    state = const AsyncValue.loading();
    state = AsyncValue.data(await _fetchLandmarks());
  }
}
