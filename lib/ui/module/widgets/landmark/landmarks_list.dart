import 'package:flutter/material.dart';
import 'package:mvvm_test/core/module/landmark/landmark.dart';
import 'package:mvvm_test/ui/module/widgets/landmark/landmark_card.dart';

class LandmarksList extends StatelessWidget {
  const LandmarksList(
      {super.key,
      required this.landmarks,
      required this.emptyMessage,
      required this.isLoading});
  final bool isLoading;
  final List<Landmark> landmarks;
  final String emptyMessage;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (landmarks.isEmpty) {
      return Center(child: Text(emptyMessage));
    } else {
      return ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        padding: const EdgeInsets.all(8.0),
        itemCount: landmarks.length,
        itemBuilder: (context, index) {
          final landmark = landmarks[index]; // TODO: take into account tablets
          return LandmarkCard(landmark: landmark);
        },
      );
    }
  }
}
