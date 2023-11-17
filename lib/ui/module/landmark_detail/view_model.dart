import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/core/module/landmark/repository.dart';
import 'package:mvvm_test/core/module/landmark/repository_provider.dart';

import 'package:mvvm_test/core/module/landmark_detail/landmark_detail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'view_model.g.dart';

@riverpod
Future<LandmarkDetail> asyncLandmarkDetail(
    AsyncLandmarkDetailRef ref, Landmark landmark) async {
  final LandmarkRepository repository = ref.watch(landmarkRepositoryProvider);
  final res = repository.fetchLandmarkDetail(landmark.idFicha);
  return res;
}

@riverpod
LandmarkDetail landmarkDetail(LandmarkDetailRef ref, Landmark landmark) {
  ref.listen(asyncLandmarkDetailProvider(landmark), (_, next) {
    if (next is AsyncData<LandmarkDetail>) {
      ref.state = next.value;
      ref.keepAlive();
    }
  });

  return LandmarkDetail.fromLandmark(landmark);
}
