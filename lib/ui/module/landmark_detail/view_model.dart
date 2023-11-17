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
  return repository.fetchLandmarkDetail(landmark.idFicha);
}

@riverpod
LandmarkDetail landmarkDetail(LandmarkDetailRef ref, Landmark landmark) {
  ref.listen(asyncLandmarkDetailProvider(landmark), (_, next) {
    // TODO: refactor
    if (next.hasValue) ref.state = next.requireValue;

    if (next case AsyncValue(:final value?)) ref.state = value;

    if (next.value case final value) ref.state = value!;
  });
  return LandmarkDetail.fromLandmark(landmark);
}
