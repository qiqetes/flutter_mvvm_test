import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/core/module/landmark/repository.dart';
import 'package:mvvm_test/core/module/landmark/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'view_model.g.dart';

@riverpod
class LandmarkListVM extends _$LandmarkListVM {
  late final LandmarkRepository _repository;

  @override
  Future<List<Landmark>> build() {
    _repository = ref.watch(landmarkRepositoryProvider);
    return _fetchLandmarks();
  }

  Future<List<Landmark>> _fetchLandmarks() async {
    return await _repository.fetchLandmarks();
  }

  Future<void> refetchLandmarks() async {
    state = const AsyncValue.loading();
    state = AsyncValue.data(await _fetchLandmarks());
  }
}
