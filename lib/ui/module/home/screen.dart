import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_test/ui/module/home/view_model.dart';
import 'package:mvvm_test/ui/module/widgets/landmark/landmarks_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFF7E6B),
        appBar: AppBar(
          title: const Text('Landmarks'),
        ),
        body: Consumer(
          builder: (context, ref, child) {
            final landmarks = ref.watch(landmarkListVMProvider);

            return LandmarksList(
              landmarks: landmarks.valueOrNull ?? [],
              emptyMessage: landmarks is AsyncError
                  ? 'Error obteniendo los sitios destacados'
                  : 'No se han encontrado sitios destacados',
              isLoading: (landmarks is AsyncLoading),
            );
          },
        ),
        floatingActionButton: Consumer(
          builder: (context, ref, child) => FloatingActionButton(
            onPressed: () =>
                ref.read(landmarkListVMProvider.notifier).refetchLandmarks(),
            child: const Icon(Icons.add),
          ),
        ));
  }
}
