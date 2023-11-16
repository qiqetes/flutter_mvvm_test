import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/ui/module/landmark_list/view_model.dart';
import 'package:mvvm_test/ui/module/landmark_list/widgets/landmarks_list.dart';

class LandmarkListScreen extends StatelessWidget {
  const LandmarkListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFF7E6B),
        appBar: AppBar(
          title: const Text('Landmarks'),
        ),
        body: const LandmarksList(),
        floatingActionButton: Consumer(
          builder: (context, ref, child) => FloatingActionButton(
            onPressed: () =>
                ref.read(landmarkListVMProvider.notifier).refetchLandmarks(),
            child: const Icon(Icons.add),
          ),
        ));
  }
}
