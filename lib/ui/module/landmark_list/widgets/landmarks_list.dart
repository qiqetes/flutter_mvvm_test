import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/ui/module/landmark_list/view_model.dart';

class LandmarksList extends ConsumerWidget {
  const LandmarksList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final landmarks = ref.watch(landmarkListVMProvider);
    return switch (landmarks) {
      AsyncData(:final value) => ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            final landmark = value[index];
            return ListTile(
              title: Text(landmark.nombre),
            );
          },
        ),
      AsyncError(:final error) => Center(child: Text(error.toString())),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }
}
