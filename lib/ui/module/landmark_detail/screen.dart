import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/ui/module/landmark_detail/view_model.dart';

class LandmarkDetailScreen extends ConsumerWidget {
  const LandmarkDetailScreen({super.key, required this.landmark});
  final Landmark landmark;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(landmarkDetailProvider(landmark));

    return Scaffold(body: Center(child: Text(data.descripcion.toString())));
  }
}
