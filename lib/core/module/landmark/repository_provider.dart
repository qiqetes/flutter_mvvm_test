import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/core/module/landmark/repository.dart';

final landmarkRepositoryProvider = Provider<LandmarkRepository>((ref) {
  return LandmarkRepository();
});
