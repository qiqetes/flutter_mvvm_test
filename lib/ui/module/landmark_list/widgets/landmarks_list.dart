import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/ui/module/landmark_list/view_model.dart';
import 'package:mvvm_test/ui/module/landmark_list/widgets/landmark_item.dart';

class LandmarksList extends ConsumerWidget {
  const LandmarksList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final landmarks = ref.watch(landmarkListVMProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: switch (landmarks) {
        AsyncData(:final value) => ListView.separated(
            separatorBuilder: (_, __) => const SizedBox(height: 10),
            itemCount: value.length,
            itemBuilder: (context, index) {
              final landmark = value[index]; // TODO: take into account tablets
              return LandmarkCard(landmark: landmark);
            },
          ),
        AsyncError(:final error) => Center(child: Text(error.toString())),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
