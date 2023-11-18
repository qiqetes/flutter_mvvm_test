import 'package:flutter/material.dart';
import 'package:mvvm_test/core/module/landmark_detail/landmark_detail.dart';
import 'package:mvvm_test/ui/module/landmark_detail/widgets/landmark_gallery.dart';

class LandmarkDetailInfo extends StatelessWidget {
  const LandmarkDetailInfo({super.key, required this.landmarkDetail});
  final LandmarkDetail landmarkDetail;
  bool get fullyLoaded => landmarkDetail.descripcion != null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              landmarkDetail.nombre,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 15),
            if (fullyLoaded) Text(landmarkDetail.descripcion!),
            const SizedBox(height: 25),
            LandmarkGallery(imageUrls: landmarkDetail.media?.images ?? []),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
